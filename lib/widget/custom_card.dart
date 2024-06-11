import 'package:flutter/material.dart';


// ignore: must_be_immutable
class CustomCard extends StatelessWidget {
  CustomCard({
    required this.imageIcon,
    required this.club,
    required this.scale,
    required this.nextscreen,
    super.key,
  });
  String imageIcon;
  String club;
  double scale;
  String nextscreen;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(nextscreen);
      },
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(   
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                  blurRadius: 40,
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 10,
                  offset: const Offset(10, 10))
            ]),
            child: Card(
              elevation: 10,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 140 ,vertical: 10),
                    
                child: Text(
                  club,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 26,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            right: -20,
            top: -20,
            child: Image.asset(
              scale: scale,
              imageIcon,
              height: 100,
              width: 100,
            ),
          )
        ],
      ),
      
    );
  }
}
