import 'card_tile.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black38,
        appBar: AppBar(
          title: Text('Views of Our City'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              CardTile(
                leadingLabel: 'Night View',
                subtitleLabel: 'Moon and Stars',
                leadingImagePath: 'images/moon.png',
                cardImagePath: 'images/night.png',
              ),
              //--------- Second Card -----------
              CardTile(
                leadingLabel: 'Day View',
                subtitleLabel: 'Sun and Birds',
                leadingImagePath: 'images/sun.png',
                cardImagePath: 'images/day.png',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
