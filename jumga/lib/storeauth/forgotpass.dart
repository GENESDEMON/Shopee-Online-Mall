import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jumga/utils/margin.dart';

class Storeforgot extends StatefulWidget {
  @override
  _StoreforgotState createState() => _StoreforgotState();
}

Widget headers() {
  return Container(
    child: Padding(
      padding: const EdgeInsets.fromLTRB(43, 230, 0, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Forgot Password",
            style: GoogleFonts.roboto(
                color: Color(0xff141421),
                fontSize: 36,
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
            padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
            child: Center(
                child: Text("SEND RESET LINK",
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

class _StoreforgotState extends State<Storeforgot> {
  @override
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
            const Yheight(0),
            headers(),
            const Yheight(27),
            input(),
            const Yheight(27),
            button(),
          ],
        ),
      ),
    );
  }
}
