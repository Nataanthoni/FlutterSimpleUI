import 'package:flutter/material.dart';

myBottomNav() {
  bottomNavigationBar:
  BottomNavigationBar(
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
      ]);
}
