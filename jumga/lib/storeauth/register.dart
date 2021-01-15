import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jumga/storeauth/login.dart';
import 'package:jumga/utils/margin.dart';

class Storeregister extends StatefulWidget {
  @override
  _StoreregisterState createState() => _StoreregisterState();
}

Widget headers() {
  return Container(
    child: Padding(
      padding: const EdgeInsets.fromLTRB(43, 150, 0, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Hey",
            style: GoogleFonts.roboto(
                color: Color(0xff141421),
                fontSize: 48,
                fontWeight: FontWeight.w900),
          ),
          Text(
            "Welcome!",
            style: GoogleFonts.roboto(
                color: Color(0xff141421),
                fontSize: 48,
                fontWeight: FontWeight.w900),
          ),
        ],
      ),
    ),
  );
}

Widget input() {
  return Container(
    width: double.infinity,
    child: Padding(
      padding: const EdgeInsets.fromLTRB(43, 0, 43, 0),
      child: Column(
        children: [
          //Fullname
          TextField(
            decoration: InputDecoration(
                filled: true,
                fillColor: Color(0xffC4C4C4).withOpacity(0.21),
                contentPadding: const EdgeInsets.all(19),
                hintText: 'Store Name',
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
                  borderRadius: BorderRadius.circular(8),
                )),
          ),
          const Yheight(20),
          //Email Address
          TextField(
            decoration: InputDecoration(
                filled: true,
                fillColor: Color(0xffC4C4C4).withOpacity(0.21),
                contentPadding: const EdgeInsets.all(19),
                hintText: 'Email address',
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
                  borderRadius: BorderRadius.circular(8),
                )),
          ),
          const Yheight(20),
          //Phone Number
          TextField(
            decoration: InputDecoration(
                filled: true,
                fillColor: Color(0xffC4C4C4).withOpacity(0.21),
                contentPadding: const EdgeInsets.all(19),
                hintText: 'Phone Number',
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
                  borderRadius: BorderRadius.circular(8),
                )),
          ),
          const Yheight(20),
          //Password
          TextField(
            decoration: InputDecoration(
                filled: true,
                fillColor: Color(0xffC4C4C4).withOpacity(0.21),
                contentPadding: const EdgeInsets.all(19),
                hintText: 'Password',
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
                  borderRadius: BorderRadius.circular(8),
                )),
          )
        ],
      ),
    ),
  );
}

Widget button() {
  return GestureDetector(
    onTap: () {},
    child: Container(
      child: Padding(
        padding: EdgeInsets.only(left: 40, right: 40),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Color(0xff141421),
          ),
          height: 60,
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.fromLTRB(00.0, 0.0, 0.0, 0.0),
            child: Center(
                child: Text("REGISTER",
                    style: GoogleFonts.roboto(
                        fontSize: 14,
                        fontWeight: FontWeight.w900,
                        color: Colors.white))),
          ),
        ),
      ),
    ),
  );
}

Widget noaccount(context) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Storelogin(),
            ),
          );
        },
        child: Text(
          "Already have an account? Sign In",
          style: GoogleFonts.roboto(
              color: Color(0xff141421).withOpacity(0.38),
              fontSize: 13,
              fontWeight: FontWeight.w600),
        ),
      ),
    ],
  );
}

class _StoreregisterState extends State<Storeregister> {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios, color: Color(0xff141421)),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        body: ListView(
          shrinkWrap: true,
          physics: ScrollPhysics(),
          children: <Widget>[
            headers(),
            const Yheight(39),
            input(),
            const Yheight(39),
            button(),
            const Yheight(23),
            noaccount(context)
          ],
        ),
      ),
    );
  }
}
