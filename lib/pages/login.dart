import 'dart:html';

import 'package:catalog/util/routes.dart';
import 'package:flutter/material.dart';

class loginpage extends StatefulWidget {
  const loginpage({Key? key}) : super(key: key);

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  String name = "";
  bool changeButton = false;
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
          child: Column(
            children: [
              Image.asset(
                "assets/images/login.png",
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Welcome, $name",
                style: newMethod(),
              ),
              SizedBox(
                height: 40,
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Enter the username",
                  labelText: "Username",
                ),
                onChanged: (value) {
                  name = value;
                  setState(() {});
                },
              ),
              TextFormField(
                decoration: InputDecoration(
                    hintText: "Password", labelText: "Password"),
              ),
              SizedBox(height: 20),

              InkWell(
                onTap: () {
                  //Navigator.pushNamed(context, myroutes.homeroute);
                  setState(() {
                    changeButton = true;
                  });
                },
                child: AnimatedContainer(
                  duration: Duration(seconds: 1),
                  width: changeButton?50:150,
                  height: 50,
                  alignment: Alignment.center,
                  child: changeButton?Icon(Icons.done):Text(
                    "Login",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                  decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(changeButton?20:8)),
                ),
              )
              // ElevatedButton(
              //   onPressed: () {
              //     Navigator.pushNamed(context, myroutes.homeroute);
              //   },
              //   child: Text("Login"),
              //   style: TextButton.styleFrom(minimumSize: Size(120, 40)),
              // )
            ],
          ),
        ),
      ),
    );
  }

  TextStyle newMethod() {
    return TextStyle(
        fontSize: 22, color: Colors.black, fontWeight: FontWeight.bold);
  }
}
