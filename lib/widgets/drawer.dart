import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Drawer(
      child: Container( 
        child: ListView(
          children: [
            Padding(padding: EdgeInsets.all(20)),
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountName: Text("Aakarsh",),
                accountEmail: Text("Aakarsh135@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage:NetworkImage("https://cdn.dribbble.com/users/5534/screenshots/14230133/media/e2f853f8232acad78bf143c32f2f3a04.jpg")),)
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white,),
                title: Text(
                  "Home",
                  textScaleFactor: 1.2,
                  style: TextStyle(color:Colors.white,),
                ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,),
                title: Text(
                  "profile",
                  textScaleFactor: 1.2,
                  style: TextStyle(color:Colors.white,),
                ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.mail,
                color: Colors.white,
              ),
              title: Text(
                "Email me",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}