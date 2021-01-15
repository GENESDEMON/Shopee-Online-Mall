import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jumga/tabs/account.dart';
import 'package:jumga/tabs/dashboard.dart';
import 'package:jumga/utils/margin.dart';

class Cart extends StatefulWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;
  final Function changeTab;

  const Cart({Key key, this.scaffoldKey, this.changeTab}) : super(key: key);
  @override
  _CartState createState() => _CartState();
}

Widget listitems() {
  return Padding(
    padding: const EdgeInsets.fromLTRB(3, 0, 3, 0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          child: Container(
            color: Colors.grey.withOpacity(0.06),
            height: 90,
            child: Row(
              children: [
                const Xwidth(30),
                ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.asset(
                    'assets/images/img1.png',
                    height: 50,
                    width: 50,
                    fit: BoxFit.fill,
                  ),
                ),
                const Xwidth(15),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Red Pillar Shirt",
                      style: GoogleFonts.roboto(
                          color: Color(0xff141421),
                          fontSize: 16,
                          fontWeight: FontWeight.w800),
                    ),
                    const Yheight(5),
                    Text(
                      "NGN 2000.00",
                      style: GoogleFonts.roboto(
                          color: Color(0xff141421).withOpacity(0.8),
                          fontSize: 13,
                          fontWeight: FontWeight.w800),
                    ),
                  ],
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 00, 2, 0),
                  child: Flexible(
                    child: Container(
                      child: Padding(
                        padding: EdgeInsets.only(left: 0, right: 0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Color(0xff141421),
                          ),
                          height: 37,
                          width: 37,
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(00.0, 0.0, 0.0, 0.0),
                            child: Center(child: TextField()),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const Xwidth(9),
                Icon(
                  Icons.delete,
                  color: Color(0xff141421).withOpacity(0.5),
                  size: 27.0,
                ),
                const Xwidth(15)
              ],
            ),
          ),
        ),
        const Yheight(3),
        GestureDetector(
          child: Container(
            color: Colors.grey.withOpacity(0.06),
            height: 90,
            child: Row(
              children: [
                const Xwidth(30),
                ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.asset(
                    'assets/images/img2.png',
                    height: 50,
                    width: 50,
                    fit: BoxFit.fill,
                  ),
                ),
                const Xwidth(15),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Red Pillar Shirt",
                      style: GoogleFonts.roboto(
                          color: Color(0xff141421),
                          fontSize: 16,
                          fontWeight: FontWeight.w800),
                    ),
                    const Yheight(5),
                    Text(
                      "NGN 2000.00",
                      style: GoogleFonts.roboto(
                          color: Color(0xff141421).withOpacity(0.8),
                          fontSize: 13,
                          fontWeight: FontWeight.w800),
                    ),
                  ],
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 00, 2, 0),
                  child: Flexible(
                    child: Container(
                      child: Padding(
                        padding: EdgeInsets.only(left: 0, right: 0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Color(0xff141421),
                          ),
                          height: 37,
                          width: 37,
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(00.0, 0.0, 0.0, 0.0),
                            child: Center(child: TextField()),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const Xwidth(9),
                Icon(
                  Icons.delete,
                  color: Color(0xff141421).withOpacity(0.5),
                  size: 27.0,
                ),
                const Xwidth(15)
              ],
            ),
          ),
        ),
        const Yheight(3),
        GestureDetector(
          child: Container(
            color: Colors.grey.withOpacity(0.06),
            height: 90,
            child: Row(
              children: [
                const Xwidth(30),
                ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.asset(
                    'assets/images/img3.png',
                    height: 50,
                    width: 50,
                    fit: BoxFit.fill,
                  ),
                ),
                const Xwidth(15),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Red Pillar Shirt",
                      style: GoogleFonts.roboto(
                          color: Color(0xff141421),
                          fontSize: 16,
                          fontWeight: FontWeight.w800),
                    ),
                    const Yheight(5),
                    Text(
                      "NGN 2000.00",
                      style: GoogleFonts.roboto(
                          color: Color(0xff141421).withOpacity(0.8),
                          fontSize: 13,
                          fontWeight: FontWeight.w800),
                    ),
                  ],
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 00, 2, 0),
                  child: Flexible(
                    child: Container(
                      child: Padding(
                        padding: EdgeInsets.only(left: 0, right: 0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Color(0xff141421),
                          ),
                          height: 37,
                          width: 37,
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(00.0, 0.0, 0.0, 0.0),
                            child: Center(child: TextField()),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const Xwidth(9),
                Icon(
                  Icons.delete,
                  color: Color(0xff141421).withOpacity(0.5),
                  size: 27.0,
                ),
                const Xwidth(15)
              ],
            ),
          ),
        ),
      ],
    ),
  );
}

Widget calculation() {
  return Padding(
    padding: const EdgeInsets.fromLTRB(28, 0, 28, 0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              "SubTotal",
              style: GoogleFonts.roboto(
                  color: Color(0xff141421).withOpacity(0.7),
                  fontSize: 15,
                  fontWeight: FontWeight.w500),
            ),
            Spacer(),
            Text(
              "NGN 16000.00",
              style: GoogleFonts.roboto(
                  color: Color(0xff141421),
                  fontSize: 15,
                  fontWeight: FontWeight.w800),
            )
          ],
        ),
        const Yheight(10),
        Row(
          children: [
            Text(
              "Delivery Fee",
              style: GoogleFonts.roboto(
                  color: Color(0xff141421).withOpacity(0.7),
                  fontSize: 15,
                  fontWeight: FontWeight.w500),
            ),
            Spacer(),
            Text(
              "NGN 16000.00",
              style: GoogleFonts.roboto(
                  color: Color(0xff141421),
                  fontSize: 15,
                  fontWeight: FontWeight.w800),
            ),
          ],
        ),
        const Yheight(10),
        Row(
          children: [
            Text(
              "TOTAL",
              style: GoogleFonts.roboto(
                  color: Color(0xff141421).withOpacity(0.7),
                  fontSize: 17,
                  fontWeight: FontWeight.w800),
            ),
            Spacer(),
            Text(
              "NGN 16000.00",
              style: GoogleFonts.roboto(
                  color: Color(0xff141421),
                  fontSize: 15,
                  fontWeight: FontWeight.w800),
            ),
          ],
        )
      ],
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
                child: Text("PROCEED TO CHECKOUT",
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

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    final title = "Your Cart";
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff141421),
          title: Text(
            title,
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: ListView(
            shrinkWrap: true,
            physics: ScrollPhysics(),
            children: <Widget>[
              const Yheight(10),
              listitems(),
              const Yheight(50),
              calculation(),
              const Yheight(90),
              button()
            ]),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Dashboard(),
                      ),
                    );
                  },
                  child: Icon(Icons.home)),
              label: ("Home"),
            ),
            BottomNavigationBarItem(
              icon: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Cart(),
                      ),
                    );
                  },
                  child: Icon(Icons.shopping_cart)),
              label: ("Your Cart"),
            ),
            BottomNavigationBarItem(
              icon: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Account(),
                      ),
                    );
                  },
                  child: Icon(Icons.person)),
              label: ("Your Profile"),
            ),
          ],
        ),
      ),
    );
  }
}
