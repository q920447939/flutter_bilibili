import 'package:badges/badges.dart' as badges;
import 'package:flustars/flustars.dart';
import 'package:flutter/material.dart';

import '../gen/assets.gen.dart';
import '../http/widget/scroll_tab_bar.dart';

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

  int _bottomNavigationIndex = 3; //底部导航页的索引，从第一页开始（比如首页）

  List _bottomNameList = [
    "首页",
    "动态",
    "+",
    "会员购",
    "我的",
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
        child: Center(
          child: Padding(
            padding: EdgeInsets.only(top: 20),
            child: Column(
              children: [
                _buildTop(),
                _buildTabBar(),
                _buildBigVideo(),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: _buildBottomItems(),
        currentIndex: _bottomNavigationIndex,
        onTap: (idx) {},
        fixedColor: Colors.red[300],
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 14,
        unselectedFontSize: 14,
      ),
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

  _buildBigVideo() {
    return Container(
      height: 400,
      child: Column(
        children: [
          Stack(
            children: [
              Card(
                color: Colors.black54,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                shadowColor: Colors.red,
                elevation: 5,
                clipBehavior: Clip.antiAlias, //裁切子组件，四周变成钝角了
                margin: EdgeInsets.all(5),
                child: AspectRatio(
                  //比例 16:9
                  aspectRatio: 16 / 9,
                  child: Image.asset(Assets.image.home.tabBarBigVideo.path),
                ),
              ),
              Positioned(
                  left: 10,
                  bottom: 10,
                  child: Row(
                    children: [
                      Icon(
                        Icons.play_arrow,
                        size: 14,
                        color: Colors.white,
                      ),
                      Text(
                        '359.4万',
                        style: TextStyle(fontSize: 14, color: Colors.white),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Icon(
                          Icons.book,
                          size: 14,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        '102',
                        style: TextStyle(fontSize: 14, color: Colors.white),
                      ),
                    ],
                  )),
              Positioned(
                right: 10,
                bottom: 10,
                child: Row(
                  children: [
                    Image(
                      image: AssetImage(Assets.image.home.enlarge.path),
                      color: Colors.white,
                      width: 20,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10, right: 10),
                      child: Image(
                        image: AssetImage(Assets.image.home.barrageOpen.path),
                        color: Colors.white,
                        width: 25,
                      ),
                    ),
                    Image(
                      image: AssetImage(Assets.image.home.muteSound.path),
                      color: Colors.white,
                      width: 20,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 5),
                child: Icon(
                  Icons.rocket_launch,
                  color: Colors.red,
                  size: 20,
                ),
              ),
              //double height = ScreenUtil.getInstance().screenHeight;
              Container(
                padding: EdgeInsets.only(left: 5),
                width: ScreenUtil.getInstance().screenWidth * (3 / 4),
                child: Text(
                  "一个真实的案例告诉你,人无聊起来能有多坏?",
                  style: TextStyle(
                    //fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.black,
                  ),
                  maxLines: 2,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 4, right: 4),
                child: SizedBox(
                  width: 45,
                  height: 30,
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Icon(
                          Icons.thumb_up,
                          color: Colors.grey,
                          size: 25,
                        ),
                      ),
                      Positioned(
                          top: 1,
                          right: 0,
                          child: Text(
                            "2万",
                            style: TextStyle(color: Colors.grey, fontSize: 13),
                          ))
                    ],
                  ),
                ),
              ),
              Icon(
                Icons.more_vert,
                color: Colors.grey,
                size: 20,
              ),
            ],
          )
        ],
      ),
    );
  }

  List<BottomNavigationBarItem> _buildBottomItems() {
    return [
      BottomNavigationBarItem(
          icon: Image(
            image: AssetImage(
              Assets.image.home.buttomNavigate.home.path,
            ),
            width: 20,
            height: 20,
            color: Colors.grey,
          ),
          label: "首页"),
      BottomNavigationBarItem(
          icon: Image(
            image: AssetImage(
              Assets.image.home.buttomNavigate.dynamic.path,
            ),
            width: 20,
            height: 20,
            color: Colors.grey,
          ),
          label: "动态"),
      BottomNavigationBarItem(
        icon: Container(
          width: 20,
          height: 20,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: Colors.red[300]),
          child: Center(
            child: Icon(
              Icons.add,
              size: 20,
              color: Colors.white,
            ),
          ),
        ),
        label: "",
      ),
      BottomNavigationBarItem(
          icon: Image(
            image: AssetImage(
              Assets.image.home.buttomNavigate.shopCar.path,
            ),
            width: 20,
            height: 20,
            color: Colors.grey,
          ),
          label: "会员购"),
      BottomNavigationBarItem(
          icon: Image(
            image: AssetImage(
              Assets.image.home.buttomNavigate.my.path,
            ),
            width: 20,
            height: 20,
            color: Colors.grey,
          ),
          label: "我的"),
    ];
  }
}
