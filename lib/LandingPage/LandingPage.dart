import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          return Padding(
            padding: const EdgeInsets.only(top: 100.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: pageChildren(),
            ),
          );
        } else {
          return Padding(
            padding: const EdgeInsets.only(top: 40.0,left: 25,right: 25),
            child: Column(
              children: pageChildren(),
            ),
          );
        }
      },
    );
  }

  List<Widget> pageChildren() {
    return [
      Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Website \nDevelopers",
              style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                  color: Colors.white),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Text(
                "A software company is a company whose primary products are various forms of software, \nsoftware technology, distribution, and software product development. ",
                style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w300,
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ),
            MaterialButton(
              padding:
              EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
              onPressed: () {},
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
              elevation:10,

              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Our Packages",
                  style: GoogleFonts.acme(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.red,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      Image.asset('assets/images/ss.png',)
    ];
  }
}
