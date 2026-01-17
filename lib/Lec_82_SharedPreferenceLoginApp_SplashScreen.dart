import 'dart:async';

import 'package:demo_app/Lec_82_SharedPreferenceLoginApp_LoginScreen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Lec_82_SharedPreferenceLoginApp_HomeScreen.dart';

class Lec82LoginApp extends StatefulWidget {
  const Lec82LoginApp({super.key});

  @override
  State<Lec82LoginApp> createState() => _Lec82LoginAppState();
}

class _Lec82LoginAppState extends State<Lec82LoginApp> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Timer(Duration(seconds: 5), () => whereToGo(),);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.indigo.shade900,
        child: Center(
          child: Icon(
            Icons.person,
            size: 101,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  void whereToGo() async {
    var prefs = await SharedPreferences.getInstance();

    var isLoggedIn = prefs.getBool("loggedIn");

    if(isLoggedIn != null) {
      if(isLoggedIn) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => Lec82HomeScrn(),),
        );
      } else {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => Lec82LoginScrn(),),
        );
      }
    } else {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Lec82LoginScrn(),),
      );
    }

    // Timer(
    //   Duration(seconds: 5),
    //       () => Navigator.pushReplacement(
    //     context,
    //     MaterialPageRoute(builder: (context) => Lec82LoginScrn(),),
    //   ),
    // );
  }
}

