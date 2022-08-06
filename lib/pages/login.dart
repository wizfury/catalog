import 'dart:html';

import 'package:flutter/material.dart';

class loginpage extends StatelessWidget {
  const loginpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
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
              "Welcome",
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
            ),
            TextFormField(
              decoration:
                  InputDecoration(hintText: "Password", labelText: "Password"),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                print("Hello world!");
              },
              child: Text("Login"),
              style: TextButton.styleFrom(),
            )
          ],
        ),
      ),
    );
  }

  TextStyle newMethod() {
    return TextStyle(
        fontSize: 22, color: Colors.black, fontWeight: FontWeight.bold);
  }
}
