import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jumga/utils/margin.dart';

class Editprofile extends StatefulWidget {
  @override
  _EditprofileState createState() => _EditprofileState();
}

Widget image() {
  return Padding(
    padding: const EdgeInsets.fromLTRB(100, 50, 100, 0),
    child: Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: Image.asset(
            'assets/images/img1.png',
            height: 200,
            width: 200,
            fit: BoxFit.fill,
          ),
        ),
      ],
    ),
  );
}

Widget name() {
  return Padding(
    padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "Alice Dayo",
          style: GoogleFonts.roboto(
              color: Color(0xff141421),
              fontSize: 18,
              fontWeight: FontWeight.w800),
        ),
        const Yheight(7),
        Text(
          "alicedayo@gmail.com",
          style: GoogleFonts.roboto(
              color: Color(0xff141421).withOpacity(0.5),
              fontSize: 13,
              fontWeight: FontWeight.w600),
        ),
      ],
    ),
  );
}

Widget fields() {
  return Padding(
    padding: const EdgeInsets.fromLTRB(3, 0, 3, 0),
    child: Column(
      children: [
        Container(
          color: Colors.grey.withOpacity(0.06),
          height: 70,
          child: Row(
            children: [
              const Xwidth(30),
              Text(
                "Phone Number",
                style: GoogleFonts.roboto(
                    color: Color(0xff141421).withOpacity(0.6),
                    fontSize: 13,
                    fontWeight: FontWeight.w800),
              ),
              Spacer(),
              Text(
                "+2348126398700",
                style: GoogleFonts.roboto(
                    color: Color(0xff141421),
                    fontSize: 13,
                    fontWeight: FontWeight.w800),
              ),
              const Xwidth(30),
            ],
          ),
        ),
        const Yheight(3),
        Container(
          color: Colors.grey.withOpacity(0.06),
          height: 70,
          child: Row(
            children: [
              const Xwidth(30),
              Text(
                "Delivery Address",
                style: GoogleFonts.roboto(
                    color: Color(0xff141421).withOpacity(0.6),
                    fontSize: 13,
                    fontWeight: FontWeight.w800),
              ),
              Spacer(),
              Text(
                "12 queens avenue, Ikeja",
                style: GoogleFonts.roboto(
                    color: Color(0xff141421),
                    fontSize: 13,
                    fontWeight: FontWeight.w800),
              ),
              const Xwidth(30),
            ],
          ),
        ),
        const Yheight(3),
        Container(
          color: Colors.grey.withOpacity(0.06),
          height: 70,
          child: Row(
            children: [
              const Xwidth(30),
              Text(
                "State",
                style: GoogleFonts.roboto(
                    color: Color(0xff141421).withOpacity(0.6),
                    fontSize: 13,
                    fontWeight: FontWeight.w800),
              ),
              Spacer(),
              Text(
                "LAGOS",
                style: GoogleFonts.roboto(
                    color: Color(0xff141421),
                    fontSize: 13,
                    fontWeight: FontWeight.w800),
              ),
              const Xwidth(30),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget editbutton() {
  return GestureDetector(
    child: Padding(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
      child: Container(
        color: Color(0xff141421),
        height: 60,
        width: 7,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "EDIT PROFILE",
              style: GoogleFonts.roboto(
                  color: Colors.white,
                  fontSize: 13,
                  fontWeight: FontWeight.w800),
            ),
          ],
        ),
      ),
    ),
  );
}

class _EditprofileState extends State<Editprofile> {
  @override
  Widget build(BuildContext context) {
    final title = "Your Profile";
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
            shrinkWrap: true,
            physics: ScrollPhysics(),
            children: <Widget>[
              image(),
              const Yheight(20),
              name(),
              const Yheight(20),
              fields(),
              const Yheight(40),
              editbutton()
            ]),
      ),
    );
  }
}
