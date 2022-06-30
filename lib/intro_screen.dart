import 'package:flutter/cupertino.dart';

class Intro extends StatelessWidget {
  List<BoardingModel>boarding=[
    BoardingModel(image: 'assets/images/onboarding.png',
        body: 'we have young and professional delivery team that will bring your food as soon as possible to your doorstep ',
        title: 'Get Food delivery to your doorstep asap'),
    BoardingModel(image: 'assets/images/onboarding1.png',
        body: 'we are constantly adding your favourite restaurant throughout the territory and around  your area carefully selected',
        title: 'buy any food from any favorite restaurant '),

  ];

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class BoardingModel{
  final String image;
  final String title;
  final String body;
  BoardingModel(
      {
        required this.image,
        required this.body,
        required this.title,

      });
}


