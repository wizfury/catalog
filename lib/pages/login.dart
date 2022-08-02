import 'package:flutter/material.dart';

class loginpage extends StatelessWidget {
  const loginpage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
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
              decoration: InputDecoration(hintText: "Enter the username",labelText: "Username"),
          )
          
        ],
        ),
    );
  }

  TextStyle newMethod() {
    return TextStyle(
            fontSize: 22,
            color: Colors.black,
            fontWeight: FontWeight.bold
          );
  }
}