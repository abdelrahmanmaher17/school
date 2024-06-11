import 'package:flutter/material.dart';
import 'package:school/widget/custom_text_field.dart';

// ignore: camel_case_types
class Adminlogin extends StatelessWidget {
  const Adminlogin({super.key});

    @override
  Widget build(BuildContext context) {
    // TODO: implement build
    
    return  Scaffold(
      appBar: AppBar(title: const Text("hello admin",
              style: TextStyle(
                fontFamily: AutofillHints.creditCardName,fontSize: 30),),),
      body: Column(
        children: [
          Image.asset("assets/images/log.png", ),
          Container(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                CustomTextField(inputType: TextInputType.name, hintText: "Admin ID", obscureText:false ),
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
                    Navigator.of(context).pushReplacementNamed("adminwelcom");
                  },
                ),],
            ),)],
        ),
      );
  }
}