import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomButon extends StatelessWidget {
  CustomButon({super.key,
    this.onTap,
    required this.text
    });

  VoidCallback? onTap;
  String text;
  
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          gradient:
              const LinearGradient(colors: [Color(0xff003833), Color(0xfffff2ff)]),
          borderRadius: BorderRadius.circular(8),
        ),
        width: double.infinity,
        height: 60,
        child: Row(
          children: [
            Text(
              text,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Image.asset('assets/images/student.png')
          ],
        ),
      ),
    );
  }
}
