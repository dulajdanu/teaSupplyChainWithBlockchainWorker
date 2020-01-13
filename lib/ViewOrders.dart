import 'package:flutter/material.dart';

class ViewOrders extends StatefulWidget {
  ViewOrders({Key key}) : super(key: key);

  @override
  _ViewOrdersState createState() => _ViewOrdersState();
}

class _ViewOrdersState extends State<ViewOrders> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("View Orders"),
      ),
      body: Container(),
    );
  }
}
