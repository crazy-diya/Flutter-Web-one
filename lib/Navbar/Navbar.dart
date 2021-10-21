import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Navbar extends StatelessWidget {
  const Navbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder( //  page eka podi wena kot athiyenna oona widiha deecide kala hakai
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return DesktopNavBar();
        } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
          return DesktopNavBar();
        } else {
          return MobileNavBar();
        }
      },
    );
  }
}

class MobileNavBar extends StatelessWidget {
  const MobileNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(minWidth: double.infinity),
      padding: EdgeInsets.only(top: 30),
      child: Column(
        children: [
          Text(
            "PlanningSolution HIT",
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.white, fontSize: 30),
          ),
          Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Text(
                "Home",
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "About us",
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "Contact",
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "Help and Feedback",
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(
                height: 5,
              ),
              MaterialButton(
                padding:
                EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
                onPressed: () {},
                color: Colors.pink,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Get Started",
                    style: GoogleFonts.montserrat(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class DesktopNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30),
      constraints: BoxConstraints(maxWidth: double.infinity),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "PlanningSolution HIT",
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.white, fontSize: 30),
          ),
          Row(
            children: [
              Text(
                "Home",
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(
                width: 30,
              ),
              Text(
                "About us",
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(
                width: 30,
              ),
              Text(
                "Contact",
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(
                width: 30,
              ),
              Text(
                "Help and Feedback",
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(
                width: 30,
              ),
              MaterialButton(
                padding:
                    EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
                onPressed: () {},
                color: Colors.pink,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                elevation: 0.9,

                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Get Started",
                    style: GoogleFonts.montserrat(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
