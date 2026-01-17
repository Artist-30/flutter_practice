import 'package:demo_app/Lec_82_SharedPreferenceLoginApp_LoginScreen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Lec82HomeScrn extends StatelessWidget {
  const Lec82HomeScrn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: Container(
        color: Colors.indigo.shade400,
        child: Center(
          child: Icon(
            Icons.home,
            size: 101,
            color: Colors.white,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          var prefs = await SharedPreferences.getInstance();

          prefs.setBool("loggedIn", false);

          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => Lec82LoginScrn(),),
          );
        },
        child: Icon(Icons.logout),
      ),
    );
  }
}

