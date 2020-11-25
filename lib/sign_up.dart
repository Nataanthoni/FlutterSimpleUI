import 'package:flutter/material.dart';
import 'package:flutterui/login_screen.dart';
import 'package:lottie/lottie.dart';

class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  // BottomNavigationBar bottomNav = myBottomNav();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Container(
          padding: EdgeInsets.only(top: 1),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Lottie.asset('assets/lottie/money.json'),
              TextField(
                decoration: InputDecoration(
                  focusColor: Colors.black,
                  labelText: 'Username',
                  labelStyle: TextStyle(color: Colors.black45),
                  hintText: 'Enter your username',
                  floatingLabelBehavior: FloatingLabelBehavior.auto,
                  suffixIcon: Icon(Icons.person),
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  focusColor: Colors.black,
                  labelText: 'Country',
                  labelStyle: TextStyle(color: Colors.black45),
                  hintText: 'Enter your country',
                  floatingLabelBehavior: FloatingLabelBehavior.auto,
                  suffixIcon: Icon(Icons.local_activity_outlined),
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  focusColor: Colors.black,
                  labelText: 'Email',
                  labelStyle: TextStyle(color: Colors.black45),
                  hintText: 'Enter your email',
                  floatingLabelBehavior: FloatingLabelBehavior.auto,
                  suffixIcon: Icon(Icons.mail_outline),
                ),
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  labelStyle: TextStyle(color: Colors.black45),
                  hintText: 'Please enter password',
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  suffixIcon: Icon(Icons.lock_outlined),
                ),
              ),
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.symmetric(vertical: 20, horizontal: 0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.black),
                    child: Center(
                      child: Text(
                        "SIGNUP",
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
                          builder: (context) => LoginPage(),
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
                          "LOGIN",
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
            ],
          ),
        ),
      ),
    );
  }
}
