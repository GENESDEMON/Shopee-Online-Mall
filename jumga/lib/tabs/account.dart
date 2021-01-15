import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jumga/profile/editprofile.dart';
import 'package:jumga/tabs/cart.dart';
import 'package:jumga/tabs/dashboard.dart';
import 'package:jumga/utils/margin.dart';

class Account extends StatefulWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;
  final Function changeTab;

  const Account({Key key, this.scaffoldKey, this.changeTab}) : super(key: key);
  @override
  _AccountState createState() => _AccountState();
}

Widget header(context) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(28, 50, 28, 0),
    child: Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: Image.asset(
            'assets/images/img1.png',
            height: 100,
            width: 100,
            fit: BoxFit.fill,
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(18, 0, 28, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hey there,",
                style: GoogleFonts.roboto(
                    color: Color(0xff141421).withOpacity(0.6),
                    fontSize: 13,
                    fontWeight: FontWeight.w800),
              ),
              const Yheight(5),
              Text(
                "Alice Dayo",
                style: GoogleFonts.roboto(
                    color: Color(0xff141421),
                    fontSize: 18,
                    fontWeight: FontWeight.w800),
              ),
            ],
          ),
        ),
        Spacer(),
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 00, 2, 0),
          child: Flexible(
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Editprofile(),
                  ),
                );
              },
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
                      child: Center(
                        child: Icon(
                          Icons.edit,
                          color: Colors.white,
                          size: 17.0,
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

Widget listitems() {
  return Padding(
    padding: const EdgeInsets.fromLTRB(3, 0, 3, 0),
    child: Column(
      children: [
        GestureDetector(
          child: Container(
            color: Colors.grey.withOpacity(0.06),
            height: 70,
            child: Row(
              children: [
                const Xwidth(30),
                Icon(
                  Icons.lock_clock,
                  color: Color(0xff141421),
                  size: 17.0,
                ),
                const Xwidth(15),
                Text(
                  "Order History,",
                  style: GoogleFonts.roboto(
                      color: Color(0xff141421).withOpacity(0.6),
                      fontSize: 13,
                      fontWeight: FontWeight.w800),
                ),
              ],
            ),
          ),
        ),
        const Yheight(3),
        GestureDetector(
          child: Container(
            color: Colors.grey.withOpacity(0.06),
            height: 70,
            child: Row(
              children: [
                const Xwidth(30),
                Icon(
                  Icons.brightness_2,
                  color: Color(0xff141421),
                  size: 17.0,
                ),
                const Xwidth(15),
                Text(
                  "Dark mode",
                  style: GoogleFonts.roboto(
                      color: Color(0xff141421).withOpacity(0.6),
                      fontSize: 13,
                      fontWeight: FontWeight.w800),
                ),
              ],
            ),
          ),
        ),
        const Yheight(3),
        GestureDetector(
          child: Container(
            color: Colors.grey.withOpacity(0.06),
            height: 70,
            child: Row(
              children: [
                const Xwidth(30),
                Icon(
                  Icons.exit_to_app,
                  color: Colors.red,
                  size: 17.0,
                ),
                const Xwidth(15),
                Text(
                  "LOGOUT",
                  style: GoogleFonts.roboto(
                      color: Colors.red.withOpacity(0.9),
                      fontSize: 13,
                      fontWeight: FontWeight.w800),
                ),
              ],
            ),
          ),
        )
      ],
    ),
  );
}

class _AccountState extends State<Account> {
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
              header(context),
              const Yheight(30),
              listitems()
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
