import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:netflix_clone/src/pages/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
        statusBarColor: Colors.transparent,
        systemNavigationBarDividerColor: Colors.red));

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Netflox App',
        home: HomePage());
  }
}
