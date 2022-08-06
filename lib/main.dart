import 'package:catalog/pages/homepage.dart';
import 'package:catalog/pages/login.dart';
import 'package:catalog/util/routes.dart';
import 'package:flutter/material.dart';


void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bringvegetables(thaila: true);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      initialRoute: "/home",
      routes: {
        myroutes.homeroute: (context) => HomePage(),
        myroutes.loginroute: (context) => loginpage(),
      },
    );
  }
}

bringvegetables({int rupees = 100, @required bool thaila = false}) {
  //take cycle
  //Goto sector 16
}
