import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// import 'package:teatruth/sales_series.dart';
import 'loginPage.dart';
import 'QRScannerWidget.dart';
import 'ProfilePage.dart';
import 'ViewOrders.dart';
// import 'SellingHistory.dart';
// import 'package:charts_flutter/flutter.dart' as charts;
// import 'Products.dart';

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  bool isLoader = false;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text(
                "Welcome \nDulaj",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.lightGreen, Colors.green])),
            ),
            ListTile(
              trailing: Icon(
                Icons.supervised_user_circle,
                color: Colors.black,
              ),
              title: Text(
                'Profile',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => Profile()));
              },
            ),
            isLoader == false
                ? Container()
                : ListTile(
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
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
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
                Icons.settings_input_component,
                color: Colors.black,
              ),
              title: Text(
                'View Orders',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => ViewOrders()));
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
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
              ),
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => loginPage()));
              },
              // Update the state of the app.
              // ...
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          "Home",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      body: Container(
        child: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                // Padding(
                //   padding: EdgeInsets.all(20),
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //     children: <Widget>[
                //       Container(
                //         padding: EdgeInsets.all(10),
                //         child: Column(
                //           mainAxisAlignment: MainAxisAlignment.spaceAround,
                //           children: <Widget>[
                //             Text(
                //               'Boxes Scanned Today',
                //               style: TextStyle(fontWeight: FontWeight.bold),
                //             ),
                //             Text(
                //               "0",
                //               style: TextStyle(fontWeight: FontWeight.bold),
                //             )
                //           ],
                //         ),
                //         width: 100,
                //         height: 110,
                //         decoration: BoxDecoration(
                //             borderRadius: BorderRadius.circular(15),
                //             color: Colors.lightBlueAccent,
                //             border: Border.all(width: 3)),
                //       ),
                //       Container(
                //         padding: EdgeInsets.all(9),
                //         width: 100,
                //         height: 110,
                //         child: Column(
                //           mainAxisAlignment: MainAxisAlignment.spaceAround,
                //           children: <Widget>[
                //             Text(
                //               "Complains",
                //               style: TextStyle(fontWeight: FontWeight.bold),
                //             ),
                //             Text(
                //               "0",
                //               style: TextStyle(fontWeight: FontWeight.bold),
                //             )
                //           ],
                //         ),
                //         decoration: BoxDecoration(
                //           borderRadius: BorderRadius.circular(15),
                //           border: Border.all(width: 3),
                //           color: Colors.redAccent,
                //         ),
                //       )
                //     ],
                //   ),
                // ),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: <Widget>[
                      Container(
                          child: RaisedButton(
                        color: Colors.lightGreen,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      QRWidget()));
                        },
                        child: Text("Scan Container QR Code",
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ))
                    ],
                  ),
                ),

                Padding(
                  padding: EdgeInsets.all(10),
                  child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadiusDirectional.circular(20),
                          color: Colors.amberAccent),
                      constraints: BoxConstraints(minWidth: double.infinity),
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: Text(
                              "Recent Transactions",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      )),
                ),
                Expanded(
                  child: ListView(
                    children: <Widget>[
                      Padding(
                          padding: EdgeInsets.all(10),
                          child: Column(
                            children: <Widget>[
                              ListTile(
                                title: Text("Transaction 1"),
                                subtitle:
                                    Text("Information About transaction 1"),
                              ),
                              ListTile(
                                title: Text("Transaction 2"),
                                subtitle:
                                    Text("Information About transaction 2"),
                              ),
                              ListTile(
                                title: Text("Transaction 3"),
                                subtitle:
                                    Text("Information About transaction 3"),
                              ),
                              ListTile(
                                title: Text("Transaction 4"),
                                subtitle:
                                    Text("Information About transaction 4"),
                              ),
                              ListTile(
                                title: Text("Transaction 5"),
                                subtitle:
                                    Text("Information About transaction 5"),
                              ),
                              ListTile(
                                title: Text("Transaction 6"),
                                subtitle:
                                    Text("Information About transaction 6"),
                              ),
                              ListTile(
                                title: Text("Transaction 7"),
                                subtitle:
                                    Text("Information About transaction 7"),
                              ),
                              ListTile(
                                title: Text("Transaction 8"),
                                subtitle:
                                    Text("Information About transaction 8"),
                              ),
                            ],
                          )),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
