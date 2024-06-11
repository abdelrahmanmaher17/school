

import 'package:flutter/material.dart';
import 'package:school/widget/custom_text_field.dart';


class Parentlogin extends StatelessWidget {
  const Parentlogin({super.key});

    @override
  Widget build(BuildContext context) {
    // TODO: implement build
    
    return  Scaffold(
      appBar: AppBar(title: const Text("hello parent",
              style: TextStyle(
                fontFamily: AutofillHints.creditCardName,fontSize: 30),),),
      body: Column(
        children: [
          Image.asset("assets/images/log.png", ),
          Container(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                CustomTextField(inputType: TextInputType.name, hintText: "username", obscureText:false ),
                const SizedBox(
                  height: 30,
                ),
                CustomTextField(inputType: TextInputType.name, hintText: "password", obscureText: true),
                const SizedBox(
                  height: 10,
                ),
                MaterialButton(
                  padding: const EdgeInsets.all(20),
                  color: Color.fromARGB(255, 58, 141, 193),
                  child: const Text("submet", style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),),    
                  onPressed: (){
                    showDialog(
            context: context,
              builder: (context) {
                return  Center(
                  child: AlertDialog(
                    icon: Icon(Icons.verified , size: 40,),
                    iconColor: Colors.green,
                  title: Text("Success",
                  style: TextStyle(fontSize: 20),),
                  content: Text("Login successfully" , style: TextStyle(fontSize: 20),),
                  contentPadding: EdgeInsets.only(left: 60),
                  actionsAlignment: MainAxisAlignment.center,
                  actions: [
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      width: 120,
                      child: TextButton(
                        onPressed: () {
                        Navigator.of(context).pushReplacementNamed("parentwelcom");
                      },
                        child: Text("ok" , style: TextStyle(fontSize: 20 , color: Colors.white), )),
                    ),
                  ]));
                  }
                  );
                  },
                ),],
            ),)],
        ),
      );
  }
}
