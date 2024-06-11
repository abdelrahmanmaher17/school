import 'package:flutter/material.dart';
import 'package:school/widget/custom_card.dart';

class Childrenofparent extends StatelessWidget {
  const Childrenofparent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Your childrens"),),
        body: Padding(
          padding: const EdgeInsets.only(top: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start, children: [
                Column(
                children: [
                  CustomCard(
                      nextscreen: "",
                      imageIcon: 'assets/images/students.png',
                      scale: 1,
                      club: 'omar'),
                  const SizedBox(
                    height: 60,
                  ),
                  CustomCard(
                      nextscreen: "",
                      imageIcon: 'assets/images/students.png',
                      scale: 1,
                      club: 'salma'),
                ],
              ),
            ]),
          ),
        );
  }
}
