import 'package:flutter/material.dart';

class Productdetails extends StatefulWidget {
  @override
  _ProductdetailsState createState() => _ProductdetailsState();
}

Widget image() {
  return Container(
    child: Image.asset(
      'assets/images/img1.png',
      height: 500,
      width: double.infinity,
      fit: BoxFit.fill,
    ),
  );
}

class _ProductdetailsState extends State<Productdetails> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/img1.png"),
                fit: BoxFit.cover)),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            title: Text('My App'),
            centerTitle: true,
            leading: IconButton(
                icon: Icon(
                  Icons.list,
                  color: Colors.white,
                ),
                onPressed: () {}),
          ),
        ),
      ),
    );
  }
}
