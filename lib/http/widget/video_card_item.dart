import 'package:flustars/flustars.dart';
import 'package:flutter/material.dart';

import '../../gen/assets.gen.dart';

class VideoCardItem extends StatefulWidget {
  final double height;
  final double? width;
  final String videoTitle;
  final double playNum;
  final double collectNum;
  final double aspectRatio;
  final double thumbUpNum;

  VideoCardItem({
    required this.height,
    required this.videoTitle,
    this.width = double.infinity,
    this.playNum = 0,
    this.collectNum = 0,
    this.aspectRatio = 16 / 9,
    this.thumbUpNum = 0,
  });

  @override
  State<VideoCardItem> createState() => _VideoCardItemState();
}

class _VideoCardItemState extends State<VideoCardItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height,
      width: widget.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
                        '${widget.playNum.toInt()}万',
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
                        '${widget.collectNum.toInt()}',
                        style: TextStyle(fontSize: 14, color: Colors.white),
                      ),
                    ],
                  )),
              Positioned(
                right: 10,
                bottom: 10,
                child: Row(
                  children: [
                    Text(
                      '9:36',
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    )
                  ],
                ),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.only(left: 5),
            width: 100,
            child: Text(
              widget.videoTitle,
              style: TextStyle(
                //fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Colors.black,
              ),
              maxLines: 2,
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Image(
                        width: 18,
                        height: 18,
                        image: AssetImage(
                          Assets.image.home.tickUp.path,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 5),
                      child: Text(
                        '已关注',
                        style: TextStyle(
                          //fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: Colors.orange[600],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
              Padding(
                padding: EdgeInsets.only(left: 3),
                child: SizedBox(
                  width: 80,
                  child: Text(
                    '极客湾Geek',
                    style: TextStyle(
                      //fontWeight: FontWeight.bold,
                      fontSize: 14,
                      color: Colors.grey[500],
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Icon(
                  Icons.more_vert,
                  color: Colors.grey[500],
                  size: 20,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
