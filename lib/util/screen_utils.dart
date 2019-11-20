import 'package:flutter/material.dart';
// import 'dart:ui' as ui show window;


///默认设计稿尺寸（单位 dp or pt）
// double _designW = 360.0;
// double _designH = 640.0;
// double _designD = 3.0;


class ScreenUtil{

  // 屏幕宽度
  static double getScreenW(BuildContext context){
    MediaQueryData mediaQuery = MediaQuery.of(context);
    return mediaQuery.size.width;
  }

  // 屏幕高度
  static double getScreenH(BuildContext context){
    MediaQueryData mediaQuery = MediaQuery.of(context);
    return mediaQuery.size.height;
  }
  
  // 状态栏高度
  static double getStatusBarH(BuildContext context){
    MediaQueryData mediaQuery = MediaQuery.of(context);
    return mediaQuery.padding.top;
  }

  // 底部状态栏的高度
  static double getBottomBarH(BuildContext context){
    MediaQueryData mediaQuery = MediaQuery.of(context);
    return mediaQuery.padding.bottom;
  }



}