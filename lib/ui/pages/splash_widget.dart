import 'package:flutter/cupertino.dart';
// import 'package:app/ui/container_Page.dart';

// 开屏页
class SplashWidget extends StatefulWidget{
  @override
  _SplashWidgetState createState() => _SplashWidgetState();
  
}

class _SplashWidgetState extends State<SplashWidget> {
  // var container = ContainerPage();

  bool showAd = true;

  @override
  Widget build(BuildContext context){
    return Stack(
      children: <Widget>[
        // Offstage(
        //   child: container,
        //   offstage: showAd,
        // ),
        Offstage(
          child: Container(
            decoration: BoxDecoration( // container的背景
              image: DecorationImage( 
                image: AssetImage("images/guide.png"), // 本地图片
                fit: BoxFit.cover // 铺满
              )
            ),
            child: SafeArea(
              child: Align( // 只想简单的调整一个子元素在父元素中的位置的话
              // 矩形中一个点，在水平和垂直方向的偏移
              // x,y值从-1到1分别表示矩形左边到右边的距离和顶部到底部的距离
              // 矩形宽和高为2单位
                alignment: Alignment.topRight, //右上角等同于Alignment(1.0,-1.0)
                child: Container(
                  // 填充：EdgeInsets类
                  // fromLTRB(double left, double top, double right, double bottom) -- 四个方向的填充
                  // all(double value) -- 所有方向使用相同的数值填充
                  // only({left,top,right,bottom}) -- 设置某个方向或某些方向
                  // symmetric({ vertical, horizontal }) -- 设置对称方向的填充 
                  padding: EdgeInsets.only(
                    left: 10.0,
                    right: 10.0,
                    top:2.0,
                    bottom: 2.0
                  ), 
                  decoration: BoxDecoration(
                    color: Color(0xffEDEDED),
                    // 圆角,全部10圆角
                    borderRadius: BorderRadius.all(Radius.circular(10.0))
                  ),
                  child: Text("3s跳过"),
                ),
              )
            ),
          ),
          offstage: !showAd, // 是否显示，为false的时候显示
        )
      ],
    );
  }
}