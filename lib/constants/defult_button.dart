import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  final double radius;
  final double? height;
  final double? width;
  //final Color? color;
  final String label;
  final Color textColor;
  final VoidCallback? onClick;

  const DefaultButton({
    Key? key,
    this.radius = 5.0,
    this.width,
    this.height = 35.5,
    //this.color =  Colors.lightGreen,
    required this.label,
    this.textColor = Colors.black,
    this.onClick,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(

      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          radius,
        ),
      ),
      child: Container(
        height: height,
        width: width,
        child: MaterialButton(

         // color: color,
          onPressed: onClick,
          child: Text(
            label,
            style: TextStyle(
              color: textColor,
            ),
          ),
        ),
      ),
    );
  }
}