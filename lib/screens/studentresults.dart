import 'package:flutter/material.dart';


class Studentresults extends StatelessWidget{
  const Studentresults({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(title: Text("hello Student"),),
      body: ListView(
        children: const [
          SizedBox(
            height: 30,
          ),
          Column(
            children: [
              ListTile(
                tileColor: Color.fromARGB(255, 190, 190, 197),
                title: Text("subjects", style: TextStyle(fontSize: 30 , color: Color.fromARGB(255, 255, 255, 255))),
                trailing: Icon(Icons.subject_outlined, size: 40, color: Color.fromARGB(255, 255, 255, 255)),
              ),
              SizedBox(
                height: 30,
              ),
              ListTile(
                tileColor: Color.fromARGB(255, 190, 190, 197),
                title: Text("assignments" , style: TextStyle(fontSize: 30, color: Color.fromARGB(255, 255, 255, 255) ),),
                trailing: Icon(Icons.assignment, size: 40, color: Color.fromARGB(255, 255, 255, 255)),
              ),
                SizedBox(
                height: 30,
              ),
              ListTile(
                tileColor: Color.fromARGB(255, 190, 190, 197),
                title: Text("activites" , style: TextStyle(fontSize: 30  ,color: Color.fromARGB(255, 255, 255, 255),),),
                trailing: Icon(Icons.sports_rounded, size: 40, color: Color.fromARGB(255, 255, 255, 255)),
              ),
                SizedBox(
                height: 30,
              ),
            ],
          ),
        ],
      )
    );
  }
}