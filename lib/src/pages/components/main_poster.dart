import 'package:flutter/material.dart';
import 'package:netflix_clone/src/pages/components/top_navbar.dart';

class MainPoster extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [_createHeader(), _serieInfo(), _botonera()],
    );
  }

  Widget _createHeader() {
    return Stack(
      children: [
        Image.network(
          'https://images-na.ssl-images-amazon.com/images/I/71niXI3lxlL._AC_SY679_.jpg',
          height: 350,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        Container(
          width: double.infinity,
          height: 350,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.black, Colors.black12],
                begin: Alignment.bottomCenter,
                end: Alignment.center),
          ),
        ),
        SafeArea(child: TopNavbar())
      ],
    );
  }

  Widget _serieInfo() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
            padding: EdgeInsets.symmetric(horizontal: 6),
            child: Text('Soap opera',
                style: TextStyle(color: Colors.white, fontSize: 10))),
        Icon(
          Icons.fiber_manual_record_rounded,
          color: Colors.red,
          size: 5,
        ),
        Padding(
            padding: EdgeInsets.symmetric(horizontal: 6),
            child: Text('Sex',
                style: TextStyle(color: Colors.white, fontSize: 10))),
        Icon(
          Icons.fiber_manual_record_rounded,
          color: Colors.red,
          size: 5,
        ),
        Padding(
            padding: EdgeInsets.symmetric(horizontal: 6),
            child: Text('Suspense',
                style: TextStyle(color: Colors.white, fontSize: 10))),
        Icon(
          Icons.fiber_manual_record_rounded,
          color: Colors.red,
          size: 5,
        ),
        Padding(
            padding: EdgeInsets.symmetric(horizontal: 6),
            child: Text('Teens',
                style: TextStyle(color: Colors.white, fontSize: 10))),
      ],
    );
  }

  Widget _botonera() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              Icon(Icons.check, color: Colors.white),
              Text('Saved', style: TextStyle(color: Colors.white))
            ],
          ),
          FlatButton.icon(
            color: Colors.white,
            icon: Icon(
              Icons.play_arrow,
              color: Colors.black,
            ),
            onPressed: () {},
            label: Text(
              'Play',
              style: TextStyle(color: Colors.black),
            ),
          ),
          Column(
            children: [
              Icon(Icons.info_outline, color: Colors.white),
              Text('Info', style: TextStyle(color: Colors.white))
            ],
          ),
        ],
      ),
    );
  }
}
