import 'package:flutter/material.dart';
import 'package:flutterui/sign_up.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Colors.black38,
        ),
        child: Container(
          child: Column(
            children: [
              // Image.network(
              //   "https://images.pexels.com/photos/4427967/pexels-photo-4427967.jpeg",
              //   width: MediaQuery.of(context).size.width,
              //   height: MediaQuery.of(context).size.height,
              // ),

              Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.symmetric(vertical: 20, horizontal: 0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.black),
                child: Center(
                  child: Text(
                    "LOGIN",
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignupPage(),
                    ),
                  );
                },
                child: Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border(),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black,
                            blurRadius: 5,
                            offset: Offset(0, 2))
                      ],
                      color: Colors.white),
                  child: Center(
                    child: Text(
                      "REGISTER",
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w400,
                          color: Colors.black),
                    ),
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
