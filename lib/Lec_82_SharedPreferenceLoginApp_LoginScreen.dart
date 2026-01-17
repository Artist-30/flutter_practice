import 'package:demo_app/Lec_82_SharedPreferenceLoginApp_HomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Lec82LoginScrn extends StatelessWidget {
  const Lec82LoginScrn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                minRadius: 35,
                child: Icon(Icons.person, size: 48,),
              ),
              SizedBox(height: 21,),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(18),
                  ),
                  label: Text("UserName"),
                ),
              ),
              SizedBox(height: 21,),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(18),
                  ),
                  label: Text("Password"),
                ),
              ),
              SizedBox(height: 21,),
              ElevatedButton(
                onPressed: () async {
                  var prefs = await SharedPreferences.getInstance();

                  prefs.setBool("loggedIn", true);

                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => Lec82HomeScrn(),),
                  );
                },
                child: Text(
                  "Login",
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

