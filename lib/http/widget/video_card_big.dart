import 'package:flustars/flustars.dart';
import 'package:flutter/material.dart';

import '../../gen/assets.gen.dart';

class VideoCardBig extends StatefulWidget {
  final double height;
  final double? width;
  final String videoTitle;
  final double playNum;
  final double collectNum;
  final double aspectRatio;
  final double thumbUpNum;

  VideoCardBig({
    required this.height,
    required this.videoTitle,
    this.width = double.infinity,
    this.playNum = 0,
    this.collectNum = 0,
    this.aspectRatio = 16 / 9,
    this.thumbUpNum = 0,
  });

  @override
  State<VideoCardBig> createState() => _VideoCardBigState();
}

class _VideoCardBigState extends State<VideoCardBig> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height,
      width: widget.width,
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
                  widget.videoTitle,
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
                            "${widget.thumbUpNum.toInt()}万",
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
}
