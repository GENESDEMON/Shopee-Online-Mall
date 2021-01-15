import 'package:flutter/material.dart';
import 'package:jumga/utils/margin.dart';
import 'package:google_fonts/google_fonts.dart';

class Productdetails extends StatefulWidget {
  @override
  _ProductdetailsState createState() => _ProductdetailsState();
}

Widget image() {
  return Container(
    child: Image.asset(
      'assets/images/img5.jpg',
      height: 550,
      width: double.infinity,
      fit: BoxFit.fill,
    ),
  );
}

Widget texthead() {
  return Container(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Store:",
              style: GoogleFonts.roboto(
                  color: Color(0xff141421).withOpacity(0.4),
                  fontSize: 14,
                  fontWeight: FontWeight.w700),
            ),
            Text(
              " Zimani Stores",
              style: GoogleFonts.roboto(
                  color: Color(0xff141421).withOpacity(0.9),
                  fontSize: 14,
                  fontWeight: FontWeight.w700),
            ),
          ],
        ),
        const Yheight(10),
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 00, 10, 0),
          child: Text(
            "The Red pillar shirt is a shirt for both male and females. An award winning shirt that could be won on jeans, skirts and  even on top dresses. This shirt is available in just one color",
            style: GoogleFonts.roboto(
                color: Color(0xff141421).withOpacity(0.7),
                fontSize: 13,
                fontWeight: FontWeight.w500),
          ),
        ),
        const Yheight(10),
        Text(
          "NGN 2000.00",
          style: GoogleFonts.roboto(
              color: Color(0xff141421),
              fontSize: 18,
              fontWeight: FontWeight.w900),
        ),
      ],
    ),
  );
}

Widget button(context) {
  return GestureDetector(
    onTap: () {},
    child: Container(
      child: Padding(
        padding: EdgeInsets.only(left: 30, right: 30),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Color(0xff141421),
          ),
          height: 60,
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.fromLTRB(130.0, 0.0, 0.0, 0.0),
            child: Center(
                child: Row(
              children: [
                Icon(
                  Icons.shopping_cart,
                  color: Colors.white,
                  size: 21.0,
                ),
                Text(" ADD TO CART",
                    style: GoogleFonts.roboto(
                        fontSize: 14,
                        fontWeight: FontWeight.w900,
                        color: Colors.white)),
              ],
            )),
          ),
        ),
      ),
    ),
  );
}

class _ProductdetailsState extends State<Productdetails> {
  @override
  Widget build(BuildContext context) {
    final title = "Red Pillar Shirt";
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff141421),
          leading: IconButton(
            color: Colors.white,
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          title: Text(
            title,
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: ListView(
          physics: ScrollPhysics(),
          shrinkWrap: true,
          children: <Widget>[
            image(),
            const Yheight(20),
            texthead(),
            const Yheight(30),
            button(context)
          ],
        ),
      ),
    );
  }
}
