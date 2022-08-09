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
  final _formkey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async
  {
     setState(() {
                        changeButton = true;
                      });
                      await Future.delayed(Duration(seconds: 1));
                      await Navigator.pushNamed(context, myroutes.homeroute);
                      setState(() {
                        changeButton = false;
                      });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
          child: Form(
            key: _formkey,
            child: Column(
              children: [
                Image.asset(
                  "assets/images/hey.png",
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  changeButton ? "Welcome, $name" : "welcome",
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

                Material(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(changeButton ? 20 : 8),
                  child: InkWell(
                    splashColor: Colors.red,
                    onTap: () => moveToHome(context),
                    child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                      width: changeButton ? 50 : 150,
                      height: 50,
                      alignment: Alignment.center,
                      child: changeButton
                          ? Icon(Icons.done)
                          : Text(
                              "Login",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                    ),
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
      ),
    );
  }

  TextStyle newMethod() {
    return TextStyle(
        fontSize: 22, color: Colors.black, fontWeight: FontWeight.bold);
  }
}
