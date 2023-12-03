import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';
import 'package:flutter_bilibili/http/widget/video_card_big.dart';

import '../gen/assets.gen.dart';
import '../http/widget/bottom_navigation_bar.dart';
import '../http/widget/scroll_tab_bar.dart';
import 'package:flustars/flustars.dart';

import '../http/widget/video_card_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  double _iconWidth = 40;
  double _iconHeight = 40;
  Color? _defaultColor = Colors.grey[200];

  late TabController _tabController;

  List _tableBarList = [
    "直播",
    "推荐",
    "热门",
    "动画",
    "影视",
    "爱唱歌",
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
        length: _tableBarList.length, vsync: this, initialIndex: 1);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildTop(),
              _buildTabBar(),
              VideoCardBig(
                height: 284,
                videoTitle: '一个真实的案例告诉你,人无聊起来能有多坏?',
                playNum: 395.4,
                collectNum: 102,
                thumbUpNum: 2,
              ),
              _buildVideoList(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }

  _buildTop() {
    return Row(
      children: [
        _buildTopLeft(),
        _buildTopCenter(),
        _buildTopRight(),
      ],
    );
  }

  _buildTopLeft() {
    return Stack(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 10),
          child: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                shape: BoxShape.circle,
              ),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: ClipOval(
                  child: Image(
                    width: _iconWidth,
                    height: _iconHeight,
                    image: AssetImage(Assets.image.home.tVMan.path),
                  ),
                ),
              )),
        ),
        Positioned(
          left: 5,
          top: 25,
          child: Image(
            width: 25,
            height: 25,
            image: AssetImage(Assets.image.home.battery.path),
          ),
        )
      ],
    );
  }

  _buildTopCenter() {
    return Padding(
      padding: EdgeInsets.only(left: 20, right: 5),
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.only(left: 2, right: 10),
            width: 165,
            height: 40,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              border: Border.all(color: Colors.black54, width: 0.8),
              borderRadius: BorderRadius.circular(50),
            ),
            child: Padding(
                padding: EdgeInsets.only(top: 2, left: 8),
                child: Row(
                  children: [
                    Icon(
                      Icons.search,
                      color: Colors.grey[600],
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(left: 8, top: 10),
                        child: GestureDetector(
                          onTap: () {
                            print("search");
                          },
                          child: Padding(
                            padding: EdgeInsets.only(top: 5),
                            child: TextField(
                                textAlignVertical: TextAlignVertical.center,
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.grey[600],
                                  fontWeight: FontWeight.w300,
                                ),
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: '树莓派4B',
                                )),
                          ),
                        ),
                      ),
                    )
                  ],
                )),
          ),
        ],
      ),
    );
  }

  _buildTopRight() {
    return Padding(
      padding: EdgeInsets.only(left: 7),
      child: Row(
        children: [
          Image(
            width: _iconWidth,
            height: _iconHeight,
            image: AssetImage(Assets.image.home.likesong.path),
          ),
          Padding(
            padding: EdgeInsets.only(left: 7),
            child: SizedBox(
              width: _iconWidth,
              height: _iconHeight,
              child: Image(
                image: AssetImage(
                  Assets.image.home.gamepad.path,
                ),
              ),
            ),
          ),
          Padding(
              padding: EdgeInsets.only(left: 7),
              child: badges.Badge(
                //position: badges.BadgePosition.topEnd(top: -5, end: 0),
                badgeContent: Text('3'),
                child: SizedBox(
                  width: _iconWidth,
                  height: _iconHeight,
                  child: Image(
                    image: AssetImage(
                      Assets.image.home.envolope.path,
                    ),
                  ),
                ),
              )),
        ],
      ),
    );
  }

  _buildTabBar() {
    return Padding(
        padding: EdgeInsets.only(top: 5, left: 15),
        child: Row(
          children: [
            ScrollTabBar(
              tabCount: 6,
              visibleCount: 4,
              currentIndex: 1,
              width: MediaQuery.of(context).size.width - 70,
              height: 30,
              backgroundColor: Colors.white,
              animMode: TabAnimMode.middle,
              tabBuilder: (context, index, select) {
                String name = _tableBarList[index];
                return Text(
                  name,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: select ? FontWeight.bold : FontWeight.normal,
                    color: select ? Colors.red : Colors.black,
                  ),
                );
              },
            ),
            Padding(
              padding: EdgeInsets.only(left: 10, top: 0, bottom: 10),
              child: Image(
                width: 20,
                height: 30,
                image: AssetImage(Assets.image.home.tabBarMoreInfo.path),
              ),
            )
          ],
        ));
  }

  final List<String> items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];
  List<IconData> _icons = [];

  _buildVideoList() {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.42,
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          // 每行三列
          crossAxisCount: 2,
          // 主轴间距
          mainAxisSpacing: 4.0,
          // 交叉轴间距
          crossAxisSpacing: 4.0,
        ),
        // 构建子widget
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.transparent,
              border: Border.all(color: Colors.black12, width: 0.8),
            ),
            child: VideoCardItem(
              videoTitle: index.toString(),
              height: 400,
              width: 396,
              playNum: 0,
            ),
          );
        },
        // 子widget数量
        itemCount: 10,
      ),
    );
  }

  //模拟异步获取数据
  _reloadIconData() {
    // Future 非阻塞式调用 延时200ms
    Future.delayed(Duration(milliseconds: 200)).then((value) {
      _icons.addAll([
        Icons.pedal_bike,
        Icons.ac_unit,
        Icons.face,
        Icons.favorite,
        Icons.beach_access,
        Icons.cake,
      ]);
      setState(() {});
    });
  }
}
