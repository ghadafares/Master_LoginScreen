import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'intro_screen.dart';



class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);
  get boarding => boarding;


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

}


