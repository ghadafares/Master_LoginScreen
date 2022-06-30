import 'package:flutter/material.dart';
class OnBoarding extends StatefulWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  _OnBoardingState createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  var boardController= PageController();
  @override
  Widget build(BuildContext context) {
    List<BoardingModel>boarding=[
      BoardingModel(image: 'assets/images/onboarding.png',
          body: 'we have young and professional delivery team that will bring your food as soon as possible to your doorstep ',
          title: 'Get Food delivery to your doorstep asap'),
      BoardingModel(image: 'assets/images/onboarding1.png',
          body: 'we are constantly adding your favourite restaurant throughout the territory and around  your area carefully selected',
          title: 'buy any food from any favorite restaurant '),

    ];

    return Scaffold(
        body:Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              children: [
                Expanded(child:PageView.builder(
                  itemBuilder:((context, index) => buildBoardingItem(boarding[index])),
                  itemCount: boarding.length,
                )),
                SizedBox(height: 30,),
                Row(children: [
              SmoothPageIndicator
                ],)
              ],
            )
        ));
  }
  Widget buildBoardingItem(BoardingModel model)=>Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Image(image: AssetImage('${model.image}'),),
      SizedBox(height: 30,),
      Text('${model.title}'),
      SizedBox(height: 15,),
      Text('${model.body}'),
    ],
  );
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
