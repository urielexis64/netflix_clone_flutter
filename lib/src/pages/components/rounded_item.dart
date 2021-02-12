import 'package:flutter/material.dart';

class RoundedItem extends StatelessWidget {
  final String imageURL;
  final Color borderColor;
  final String bottomImageURL;

  RoundedItem(
      {@required this.imageURL,
      @required this.borderColor,
      @required this.bottomImageURL});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                border: Border.all(color: borderColor, width: 2)),
            child: ClipOval(
              child: Image.network(
                imageURL,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Image.network(bottomImageURL, width: 70)
        ],
      ),
    );
  }
}
