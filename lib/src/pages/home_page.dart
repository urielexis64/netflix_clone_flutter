import 'package:flutter/material.dart';
import 'package:netflix_clone/src/pages/components/main_poster.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _createBody(),
      backgroundColor: Colors.black,
    );
  }

  Widget _createBody() {
    return Column(
      children: [MainPoster()],
    );
  }
}
