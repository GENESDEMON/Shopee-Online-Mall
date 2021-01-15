import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jumga/store/account.dart';
import 'package:jumga/store/newproduct.dart';
import 'package:jumga/utils/margin.dart';

class Storedashboard extends StatefulWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;
  const Storedashboard({Key key, this.scaffoldKey}) : super(key: key);
  @override
  _StoredashboardState createState() => _StoredashboardState();
}

Widget header() {
  return Padding(
    padding: const EdgeInsets.all(28.0),
    child: Row(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Welcome back,",
              style: GoogleFonts.roboto(
                  color: Color(0xff141421).withOpacity(0.6),
                  fontSize: 14,
                  fontWeight: FontWeight.w800),
            ),
            const Yheight(10),
            Text(
              "Zimani Stores",
              style: GoogleFonts.roboto(
                  color: Color(0xff141421),
                  fontSize: 18,
                  fontWeight: FontWeight.w800),
            )
          ],
        ),
        Spacer(),
        ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: Image.asset(
            'assets/images/img1.png',
            height: 50,
            width: 50,
            fit: BoxFit.fill,
          ),
        ),
      ],
    ),
  );
}

Widget scroll() {
  return Padding(
    padding: EdgeInsets.fromLTRB(28, 0, 28, 0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 100,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Color(0xff141421),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "NGN 300,00.00",
                style: GoogleFonts.roboto(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w900),
              ),
              const Yheight(10),
              Text(
                "TOTAL AMOUNT GAINED",
                style: GoogleFonts.roboto(
                    color: Colors.white.withOpacity(0.4),
                    fontSize: 14,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
        const Yheight(20),
        Container(
          height: 100,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color(0xff141421).withOpacity(0.9),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "100",
                style: GoogleFonts.roboto(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w900),
              ),
              const Yheight(10),
              Text(
                "PRODUCTS ORDERED",
                style: GoogleFonts.roboto(
                    color: Colors.white.withOpacity(0.4),
                    fontSize: 14,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
        const Yheight(20),
        Container(
          height: 100,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color(0xff141421).withOpacity(0.8),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "160",
                style: GoogleFonts.roboto(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w900),
              ),
              const Yheight(10),
              Text(
                "TOTAL PRODUCTS UPLOADED",
                style: GoogleFonts.roboto(
                    color: Colors.white.withOpacity(0.4),
                    fontSize: 14,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

class _StoredashboardState extends State<Storedashboard> {
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
              const Yheight(40),
              header(),
              const Yheight(30),
              scroll()
            ]),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Storedashboard(),
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
                        builder: (context) => Newproduct(),
                      ),
                    );
                  },
                  child: Icon(Icons.category)),
              label: ("Create Product"),
            ),
            BottomNavigationBarItem(
              icon: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Storeaccount(),
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
