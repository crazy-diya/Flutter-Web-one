import 'package:firstweb/LandingPage/LandingPage.dart';
import 'package:firstweb/Navbar/Navbar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [Color.fromRGBO(195, 20, 50, 1.0), Color.fromRGBO(36, 11, 54, 1.0)],
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Navbar(),
              LandingPage()
            ],
          ),
        ),
      ),
    );
  }
}
