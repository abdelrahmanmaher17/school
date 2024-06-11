import 'package:flutter/material.dart';
import 'package:school/screens/adminlogin.dart';
import 'package:school/screens/adminwelcom.dart';
import 'package:school/screens/childrenofparent.dart';
import 'package:school/screens/parentlogin.dart';
import 'package:school/screens/parentwelcom.dart';
import 'package:school/screens/splash_screen.dart';
import 'package:school/screens/stafflogin.dart';
import 'package:school/screens/staffwelcom.dart';
import 'package:school/screens/studentlogin.dart';
import 'package:school/screens/studentprofile.dart';
import 'package:school/screens/studentresults.dart';
import 'package:school/screens/studentschedule.dart';
import 'package:school/screens/studentwelcom.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "parent" : (context)=>Parentlogin(),
        "parentwelcom" : (context)=>Parentwelcom(),
        "student": (context)=> studentlogin(),
        "studentwelcom": (context)=> Studentwelcom(),
        "studentprofile" : (context)=> Studentprofile(),
        "admin" : (context)=> Adminlogin(),
        "adminwelcom" : (context) => Adminwelcom(),
        "staff" : (context)=> Stafflogin(),
        "staffwelcom" : (context) => Staffwelcom(),
        "studentresults":(context)=> Studentresults(),
        "studentschedule":(context)=>Studentschedule(),
        "childrenofparent": (context)=> Childrenofparent(),

        
      },
      home: SplashScreen(),
    );
  }
}
