

import 'package:flutter/material.dart';


class Parentwelcom extends StatelessWidget{
  const Parentwelcom({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton:FloatingActionButton(
        child: Icon(Icons.phone),
        onPressed:() {
          showDialog(
            context: context,
              builder: (context) {
                return  Center(
                  child: AlertDialog(
                  title: Text("contact us",
                  style: TextStyle(fontSize: 35),),
                  content: Text(" 01097188004" , style: TextStyle(fontSize: 20),),
                  actions: [
                    TextButton(
                      onPressed: () {
                      Navigator.of(context).pop();
                    },
                      child: Text("ok")),
                  ],
                  ),
                  );
              });
        },
        ),
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(title: Text("hello parent"), ),
      body: ListView(
        children:  [
          const SizedBox(
            height: 30,
          ),
          Column(
            children: [
              ListTile(
                onTap: () {
                  Navigator.of(context).pushNamed("childrenofparent");
                },
                tileColor:  Color.fromARGB(255, 189, 189, 196),
                title: Text("Children Data" , style: TextStyle(fontSize: 30 , color: Color.fromARGB(255, 255, 255, 255)),),
                trailing: Icon(Icons.person, size: 40, color: Color.fromARGB(255, 255, 255, 255)),
              ),
              const SizedBox(
                height: 30,
              ),
              ListTile(
                onTap: (){},
                tileColor:  Color.fromARGB(255, 189, 189, 196),
                title: Text("Schedule" , style: TextStyle(fontSize: 30, color: Color.fromARGB(255, 255, 255, 255) ),),
                trailing: Icon(Icons.schedule, size: 40, color: Color.fromARGB(255, 255, 255, 255)),
              ),
                const SizedBox(
                height: 30,
              ),
              ListTile(
                onTap: (){},
                tileColor: Color.fromARGB(255, 189, 189, 196),
                title: Text("Fees" , style: TextStyle(fontSize: 30 , color: Color.fromARGB(255, 255, 255, 255)),),
                trailing: Icon(Icons.credit_card_outlined , size: 40, color: Color.fromARGB(255, 255, 255, 255)),
              ),
                const SizedBox(
                height: 30, 
              ),
            ],
          ),
        ],
      ),
    );
  }
}
