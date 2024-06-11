import 'package:flutter/material.dart';


class Adminwelcom extends StatelessWidget{
  const Adminwelcom({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(title: Text("hello Admin"),),
      body: ListView(
        children: const [
          SizedBox(
            height: 30,
          ),
          Column(
            children: [
              ListTile(
                tileColor: Color.fromARGB(255, 192, 192, 200),
                title: Text("Employees", style: TextStyle(fontSize: 30 , color: Color.fromARGB(255, 255, 255, 255))),
                trailing: Icon(Icons.person_3, size: 40, color: Color.fromARGB(255, 255, 255, 255)),
              ),
              SizedBox(
                height: 30,
              ),
              ListTile(
                tileColor: Color.fromARGB(255, 192, 192, 200),
                title: Text("schedule" , style: TextStyle(fontSize: 30, color: Color.fromARGB(255, 255, 255, 255) ),),
                trailing: Icon(Icons.schedule, size: 40, color: Color.fromARGB(255, 255, 255, 255)),
              ),
                SizedBox(
                height: 30,
              ),
              ListTile(
                tileColor: Color.fromARGB(255, 192, 192, 200),
                title: Text("school data" , style: TextStyle(fontSize: 30  ,color: Color.fromARGB(255, 255, 255, 255),),),
                trailing: Icon(Icons.school_outlined, size: 40, color: Color.fromARGB(255, 255, 255, 255)),
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