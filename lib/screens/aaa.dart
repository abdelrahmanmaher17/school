import 'package:flutter/material.dart';
import 'package:school/widget/custom_card.dart';

class aaa extends StatelessWidget {
  const aaa({super.key});
  static String id = 'aaa';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: double.infinity,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.only(top: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start, children: [
          Image.asset('assets/images/log.png'),
          const SizedBox(
            height: 4,
          ),
          const Text(
            'Please, choose your club..',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 0),
            
            child:Column(
              children: [
                CustomCard(
                    nextscreen: "parent",
                    imageIcon: 'assets/images/people_12038867.png',
                    scale: 1,
                    club: 'Parent'),
                const SizedBox(
                  height: 60,
                ),
                CustomCard(
                    nextscreen: "student",
                    imageIcon: 'assets/images/winner_12039114.png',
                    scale: 1,
                    club: 'Student'),
                      const SizedBox(
                  height: 60,
                ),
                CustomCard(
                    nextscreen: "admin",
                    imageIcon: 'assets/images/person_12119546.png',
                    scale: 1,
                    club: 'Admin'),
                const SizedBox(
                  height: 60,
                ),
                CustomCard(
                    nextscreen: "staff",
                    imageIcon: 'assets/images/people_12039249.png',
                    scale: 1,
                    club: 'Staff'),
              ],
            ),
          ),
        ]),
      ),
    ));
  }
}
