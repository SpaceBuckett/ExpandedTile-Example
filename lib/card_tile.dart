import 'package:flutter/material.dart';
import 'constants.dart';

class CardTile extends StatelessWidget {
  CardTile(
      {required this.leadingLabel,
      required this.subtitleLabel,
      required this.leadingImagePath,
      required this.cardImagePath});

  final String leadingLabel;
  final String subtitleLabel;
  final String leadingImagePath;
  final String cardImagePath;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ExpansionTile(
        title: Text(
          leadingLabel,
        ),
        subtitle: Text(subtitleLabel),
        leading: Image(
          image: AssetImage(leadingImagePath),
        ),
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(
              top: 10.0,
            ),
            height: kHeightOfContainer,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(cardImagePath), fit: BoxFit.cover),
            ),
          ),
        ],
      ),
    );
  }
}
