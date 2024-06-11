import 'package:flutter/material.dart';


class Staffwelcom extends StatelessWidget{
  const Staffwelcom({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(title: Text("hello staff"),),
      body: ListView(
        children: const [
          SizedBox(
            height: 30,
          ),
          Column(
            children: [
              ListTile(
                tileColor: Color.fromARGB(255, 188, 188, 198),
                title: Text("Today classes" , style: TextStyle(fontSize: 30 , color: Color.fromARGB(255, 255, 255, 255)),),
                trailing: Icon(Icons.bookmark, size: 40, color: Color.fromARGB(255, 255, 255, 255)),
              ),
              SizedBox(
                height: 30,
              ),
              ListTile(
                tileColor: Color.fromARGB(255, 188, 188, 198),
                title: Text("schedule" , style: TextStyle(fontSize: 30 , color: Color.fromARGB(255, 255, 255, 255) ),),
                trailing: Icon(Icons.schedule, size: 40, color: Color.fromARGB(255, 255, 255, 255)),
              ),
                SizedBox(
                height: 30,
              ),
                SizedBox(
                height: 30, 
              ),
            ],
          ),
        ],
      ),
    );
  }
}