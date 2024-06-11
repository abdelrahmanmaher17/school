import 'package:flutter/material.dart';
import 'package:school/widget/custom_button.dart';
import 'package:school/widget/custom_text_field.dart';

// ignore: camel_case_types
class homePage extends StatelessWidget {
  const homePage({super.key});
  static String id = 'HomePage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color(0xff004845), Color(0xff999999)])),
          child: const Padding(
            padding: EdgeInsets.only(left: 25, top: 25),
            child: Text(
              'Hello..\nSign In !',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
          ),
        ),
        Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/log.png'),
              SizedBox(
                height: 4,
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: CustomTextField(
                  inputType: TextInputType.number,
                  hintText: 'Registeration ID',
                  obscureText: false,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: CustomTextField(
                  inputType: TextInputType.emailAddress,
                  hintText: 'Password',
                  obscureText: false,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(21.0),
                child: Container(
                  child: CustomButon(text: 'Sign In'),
                ),
              )
            ],
          ),
        ),
      ]),
    );
  }
}
