import 'package:flutter/material.dart';

class SquareItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 6),
        child: Image.network(
          'https://images-na.ssl-images-amazon.com/images/I/81ai6zx6eXL._AC_SL1304_.jpg',
          height: 170,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
