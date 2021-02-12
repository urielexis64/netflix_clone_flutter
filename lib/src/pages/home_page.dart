import 'package:flutter/material.dart';
import 'package:netflix_clone/src/pages/components/main_poster.dart';
import 'package:netflix_clone/src/pages/components/rounded_item.dart';
import 'package:netflix_clone/src/pages/components/square_item.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _createBody(),
      backgroundColor: Colors.black,
      bottomNavigationBar: _createBottomNabigation(),
    );
  }

  Widget _createBody() {
    return SafeArea(
      child: ListView(
        children: [
          MainPoster(),
          _horizontalList(
              'Avances',
              RoundedItem(
                imageURL:
                    'https://3.bp.blogspot.com/-qvw0-RjIjyc/W5gPSBHfSeI/AAAAAAAAh6E/QBCS4YQVKlU7Ur1p0dCfG1WM2N8EB0OcQCLcBGAs/s640/Elite_Official_Poster_JPosters.jpg',
                bottomImageURL:
                    'https://www.pikpng.com/pngl/b/255-2550276_elite-elite-serie-logo-png-clipart.png',
                borderColor: Colors.redAccent,
              ),
              10),
          _horizontalList('Películas de miedo', SquareItem(), 20),
          _horizontalList('Películas de miedo', SquareItem(), 20),
          _horizontalList('Películas de miedo', SquareItem(), 20),
        ],
      ),
    );
  }

  Widget _horizontalList(String title, Widget widget, int items) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 10),
          child: Text(
            title,
            style: TextStyle(
                fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          height: 110,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => widget,
            itemCount: items,
          ),
        ),
      ],
    );
  }

  BottomNavigationBar _createBottomNabigation() {
    return BottomNavigationBar(
        backgroundColor: Colors.black,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white30,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(label: 'Home', icon: Icon(Icons.home)),
          BottomNavigationBarItem(
            label: 'Search',
            icon: Icon(Icons.search),
          ),
          BottomNavigationBarItem(
            label: 'Soon',
            icon: Icon(Icons.library_music),
          ),
          BottomNavigationBarItem(
            label: 'Settings',
            icon: Icon(Icons.arrow_downward),
          ),
          BottomNavigationBarItem(
            label: 'More',
            icon: Icon(Icons.more_horiz),
          ),
        ]);
  }
}
