import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'constants/defult_button.dart';
import 'constants/text_them.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 250,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.blue,
            ),
          ),
          const Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: DefaultText(
                text: 'Welcome To Fashion Daily',
                textColor: Colors.black45,
                fontSize: 13,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                const DefaultText(
                  text: 'Sign In',
                  textColor: Colors.black,
                  fontSize: 35,
                ),
                const SizedBox(
                  width: 130,
                ),
                Row(
                  children: const [
                    DefaultText(
                      text: 'Help',
                      textColor: Colors.blue,
                      fontSize: 15,
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    Icon(
                      Icons.help_outlined,
                      size: 15,
                      color: Colors.blue,
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Align(
                alignment: Alignment.topLeft,
                child: DefaultText(
                  text: 'Phone Number',
                  textColor: Colors.black54,
                  fontSize: 14,
                )),
          ),
          const SizedBox(
            height: 2,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              onEditingComplete: () {},
              style: const TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
              ),
              decoration: InputDecoration(
                hintText: 'enter your phone number ',
                hintStyle: const TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w600,
                ),
                contentPadding: const EdgeInsets.all(8),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(1),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            width: double.infinity,
            height: 60,
            padding: const EdgeInsets.all(6),
            child: const DefaultButton(
              textColor: Colors.white,
              buttonColor: Colors.blue,
              buttonText: 'Login',
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                DefaultText(
                    text: 'Does not have any account ?',
                    textColor: Colors.black54),
                DefaultText(
                  text: 'Register now',
                  textColor: Colors.blue,
                ),
              ],
            ),
          ),
          const DefaultText(
            text: 'Use the application according to policy rules.'
                ' \nAny kind of violation will be subject to sanction',
            textColor: Colors.black54,
            textHeight: 1.3,
          )
        ],
      ),
    );
  }
}