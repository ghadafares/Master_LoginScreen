import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  final Color buttonColor;
  final String buttonText;
  final Color textColor;

  const DefaultButton({
    Key? key,
    required this.buttonColor,
    required this.buttonText,
    required this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialButton(
        onPressed: () {},
        color: buttonColor,
        child: Text(
          buttonText,
          style: TextStyle(
            color: textColor,
          ),
        ),
      ),
    );
  }
}