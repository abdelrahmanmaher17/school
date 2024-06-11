import 'package:flutter/material.dart';


class welcomePage extends StatelessWidget {
  const welcomePage({super.key});
  static String id = 'WelcomePage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Color(0xff004845), Color(0xff999999)])),
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                Image.asset('assets/images/log.png'),
                SizedBox(
                  height: 4,
                ),
                Text(
                  'Please, chose your club..',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 30,
                ),
              ]),
            ),
          ),
          Container(
            child: Row(
              children: [
                Container(
                  color: Colors.white,
                  width: 25,
                  height: 40,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
