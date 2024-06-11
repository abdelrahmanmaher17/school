import 'package:flutter/material.dart';


class Studentschedule extends StatelessWidget{
  const Studentschedule({super.key});


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
                title: Text("Exams", style: TextStyle(fontSize: 30 , color: Color.fromARGB(255, 255, 255, 255))),
                trailing: Icon(Icons.book, size: 40, color: Color.fromARGB(255, 255, 255, 255)),
              ),
              SizedBox(
                height: 30,
              ),
              ListTile(
                tileColor: Color.fromARGB(255, 190, 190, 197),
                title: Text("sports" , style: TextStyle(fontSize: 30, color: Color.fromARGB(255, 255, 255, 255) ),),
                trailing: Icon(Icons.sports, size: 40, color: Color.fromARGB(255, 255, 255, 255)),
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