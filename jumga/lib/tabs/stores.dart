import 'package:flutter/material.dart';
import 'package:jumga/tabs/account.dart';
import 'package:jumga/tabs/cart.dart';
import 'package:jumga/tabs/dashboard.dart';
import 'package:jumga/utils/margin.dart';

class Stores extends StatefulWidget {
  @override
  _StoresState createState() => _StoresState();
}

Widget searcharea() {
  return Container(
    child: Row(
      children: [
        new Flexible(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(28, 40, 20, 0),
            child: TextField(
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xffC4C4C4).withOpacity(0.21),
                  contentPadding: const EdgeInsets.all(19),
                  hintText: 'Search for a store or product',
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xffC4C4C4).withOpacity(0.21),
                    ),
                    borderRadius: BorderRadius.circular(4),
                  )),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 40, 32, 0),
          child: Flexible(
            child: GestureDetector(
              onTap: () {},
              child: Container(
                child: Padding(
                  padding: EdgeInsets.only(left: 0, right: 0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Color(0xff141421),
                    ),
                    height: 60,
                    width: 70,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(00.0, 0.0, 0.0, 0.0),
                      child: Center(
                        child: Icon(
                          Icons.search,
                          color: Colors.white,
                          size: 21.0,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    ),
  );
}

Widget Storelist() {
  return ListView();
}

class _StoresState extends State<Stores> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
            shrinkWrap: true,
            physics: ScrollPhysics(),
            children: <Widget>[
              const Yheight(30),
              searcharea(),
              const Yheight(30),
              Storelist()
            ]),
      ),
    );
  }
}
