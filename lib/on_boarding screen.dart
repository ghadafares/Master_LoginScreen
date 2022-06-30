import 'package:flutter/material.dart';
import 'package:login_screens/constants/defult_button.dart';
import 'login_screen.dart';
class OnBoardScreen extends StatelessWidget {
  const OnBoardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Row(
                 // mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    DefaultButton(
                      label: 'Skip',
                      textColor: Colors.black,
                     // color: Colors.green[80],
                      radius: 10.0,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10.0,
                ),
                const Text(
                  '7Krave',
                  style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.5,
                  width: MediaQuery.of(context).size.width,
                  child: Image.asset(
                    'assets/images/logo.png',
                    fit: BoxFit.contain,
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Text('Get Food Delivery To Your \n          doorStep asap',
                  style: Theme.of(context)
                      .textTheme
                      .headline6!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Text('We have young and professional delivery team that will bring your food as soon as possible to your doorsrt ',
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 15.0,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Row(
                  children: [
                    Container(
                      height: 2.0,
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(
                          15.0,
                        ),
                      ),
                      child: const SizedBox(
                        height: 0.0,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10.0,
                ),
                const DefaultButton(

                  label: 'Get Started',
                  width: double.infinity,
                  //color: Color(0xFF56C496),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Don\'t have an account? '),
                    TextButton(
                      onPressed:()=>{
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()))
                      },
                      child: const Text(
                        'Sign Up',
                        style: TextStyle(
                          color: Color(0xFF56C496)
                        ),

                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
///
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class OnBoardingScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
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
                  Text('indecator')
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
  List<BoardingModel>boarding=[
    BoardingModel(image: 'assets/images/onboarding.png',
        body: 'we have young and professional delivery team that will bring your food as soon as possible to your doorstep ',
        title: 'Get Food delivery to your doorstep asap'),
    BoardingModel(image: 'assets/images/onboarding1.png',
        body: 'we are constantly adding your favourite restaurant throughout the territory and around  your area carefully selected',
        title: 'buy any food from any favorite restaurant '),

  ];
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