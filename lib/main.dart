import 'package:flutter/material.dart';
import 'package:netflix_clone/src/pages/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Netflox App', home: HomePage());
  }
}
