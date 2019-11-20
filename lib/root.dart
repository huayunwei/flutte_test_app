import 'package:flutter/material.dart';
import 'package:app/ui/pages/splash_widget.dart';

class Application extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new MaterialApp(
      theme: ThemeData(backgroundColor: Colors.white),
      home: Scaffold(
        resizeToAvoidBottomPadding: false,
        body: SplashWidget(),
      ),
    );
  }
} 