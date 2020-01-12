import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      left: true,
      right: true,
      bottom: true,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Home"),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                child: Text(
                  "Welcome \nDulaj",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                decoration: BoxDecoration(color: Colors.blue),
              ),
              ListTile(
                trailing: Icon(
                  Icons.supervised_user_circle,
                  color: Colors.black,
                ),
                title: Text(
                  'Profile',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black),
                ),
                onTap: () {
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (BuildContext context) => Profile()));
                },
              ),
              ListTile(
                trailing: Icon(
                  Icons.graphic_eq,
                  color: Colors.black,
                ),
                title: Text(
                  'Selling History',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black),
                ),
                onTap: () {
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (BuildContext context) => SellingRate()));
                },
                // Update the state of the app.
                // ...
              ),
              ListTile(
                trailing: Icon(
                  Icons.panorama_wide_angle,
                  color: Colors.black,
                ),
                title: Text(
                  'Products ',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black),
                ),
                onTap: () {
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (BuildContext context) => Products()));
                },
                // Update the state of the app.
                // ...
              ),
              ListTile(
                trailing: Icon(
                  Icons.exit_to_app,
                  color: Colors.black,
                ),
                title: Text(
                  'LogOut',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black),
                ),
                onTap: () {
                  // Navigator.pushReplacement(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (BuildContext context) => loginPage()));
                },
                // Update the state of the app.
                // ...
              ),
            ],
          ),
        ),
      ),
    );
  }
}
