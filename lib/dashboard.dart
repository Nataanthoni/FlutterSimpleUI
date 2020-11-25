import 'package:flutter/material.dart';
import 'package:flutterui/sign_up.dart';
import 'package:lottie/lottie.dart';

class DashboardScreen extends StatefulWidget {
  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Container(
          padding: EdgeInsets.only(top: 100),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Lottie.asset('assets/lottie/money.json'),
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
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          fixedColor: Colors.black,
          unselectedItemColor: Colors.black45,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: "Hello",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.supervised_user_circle),
              label: "Profile",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.message_rounded),
              label: "Chats",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_balance_outlined),
              label: "Account",
            ),
          ]),
    );
  }
}
