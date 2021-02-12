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
      bottomNavigationBar: _createBottomNavigation(),
    );
  }

  Widget _createBody() {
    return SafeArea(
      child: ListView(
        children: [
          MainPoster(),
          _horizontalList(' Trailers'),
          _horizontalList('Terror movies'),
          _horizontalList('Películas de miedo'),
          _horizontalList('Películas de miedo'),
        ],
      ),
    );
  }

  Widget _horizontalList(String title) {
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
          height: 100,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              RoundedItem(
                imageURL:
                    'https://www.themoviedb.org/t/p/w533_and_h300_bestv2/lP5eKh8WOcPysfELrUpGhHJGZEH.jpg',
                bottomImageURL:
                    'https://www.orcasound.com/wp-content/uploads/2020/03/thumbnail_image002-1-1.png',
                borderColor: Colors.redAccent,
              ),
              RoundedItem(
                imageURL:
                    'https://www.themoviedb.org/t/p/w533_and_h300_bestv2/k7T9xRyzP41wBVNyNeLmh8Ch7gD.jpg',
                bottomImageURL:
                    'https://i.pinimg.com/originals/38/9c/2f/389c2f328fe966963879b01093a8a252.png',
                borderColor: Colors.grey,
              ),
              RoundedItem(
                imageURL:
                    'https://www.themoviedb.org/t/p/w533_and_h300_bestv2/6TPZSJ06OEXeelx1U1VIAt0j9Ry.jpg',
                bottomImageURL:
                    'https://occ-0-1001-444.1.nflxso.net/dnm/api/v6/tx1O544a9T7n8Z_G12qaboulQQE/AAAABff2ZUZrDEcjZlhTl6JF386T7IGaGmYGgfidWH2Sx9BTiDG1jCuQSAgVhwxkPJ-KkSoSU5uIVzKr99xcupRWAz-dV8WQh9nA1N0TNMeAwTeRDxKGp_5i_KpsFTw7VtOMI1oQFaTU7YzCOvRjAS1rTGf61LcjpFeyqXOXb7F7qg_1JA.png?r=b91',
                borderColor: Colors.grey,
              ),
            ],
          ),
        ),
      ],
    );
  }

  BottomNavigationBar _createBottomNavigation() {
    return BottomNavigationBar(
        backgroundColor: Colors.black,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white30,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              title: Text(
                'Home',
                style: TextStyle(fontSize: 12),
              ),
              icon: Icon(Icons.home)),
          BottomNavigationBarItem(
            title: Text(
              'Search',
              style: TextStyle(fontSize: 12),
            ),
            icon: Icon(Icons.search),
          ),
          BottomNavigationBarItem(
            title: Text(
              'Soon',
              style: TextStyle(fontSize: 12),
            ),
            icon: Icon(Icons.library_music),
          ),
          BottomNavigationBarItem(
            title: Text(
              'Downloads',
              style: TextStyle(fontSize: 12),
            ),
            icon: Icon(Icons.arrow_downward),
          ),
          BottomNavigationBarItem(
            title: Text(
              'More',
              style: TextStyle(fontSize: 12),
            ),
            icon: Icon(Icons.more_horiz),
          ),
        ]);
  }
}
