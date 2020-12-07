import 'package:flutter/material.dart';
import 'package:flutterui/login_screen.dart';
import 'package:lottie/lottie.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  // BottomNavigationBar bottomNav = myBottomNav();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Image.network(
                  "https://scontent.febb3-1.fna.fbcdn.net/v/t1.0-9/116212779_634487090607029_5502012108412908618_n.jpg?_nc_cat=105&ccb=2&_nc_sid=8bfeb9&_nc_eui2=AeESdUL3eMd12ClYGiFxBGxl2a5AmyhoRCjZrkCbKGhEKH6FwutC8VCn9gDBIay1jlZzFo7mIE640u3L8EyGy-NW&_nc_ohc=eglm97MrC7AAX_w6OXI&_nc_ht=scontent.febb3-1.fna&oh=b9de769c20496332d26c2c76a012b53d&oe=5FEA8C0A",
                  width: MediaQuery.of(context).size.width,
                  height: 450,
                  fit: BoxFit.cover,
                ),
                Positioned(
                    child: Icon(
                      Icons.cancel_sharp,
                      color: Colors.black,
                    ),
                    top: 30,
                    left: 5),
                Positioned(
                    bottom: 20,
                    right: 20,
                    child: Row(
                      children: [
                        CircleAvatar(
                          child: Icon(
                            Icons.file_upload,
                            color: Colors.grey,
                          ),
                          backgroundColor: Colors.white,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        CircleAvatar(
                          child: Icon(
                            Icons.star,
                            color: Colors.red,
                          ),
                          backgroundColor: Colors.white,
                        ),
                      ],
                    )),
              ],
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(top: 10, bottom: 20),
              padding: EdgeInsets.symmetric(vertical: 0, horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Neilie Swanson",
                        style: TextStyle(
                            fontSize: 26, fontWeight: FontWeight.w800),
                      ),
                      Text(
                        "Noting much but cold be mixed with other stuffs here",
                      ),
                      Text(
                        "Noting much important than this",
                      ),
                    ],
                  ),

                  //Second column
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "About",
                          style: TextStyle(
                              fontSize: 26, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Noting much but cold be mixed with other stuffs here",
                        ),
                        Text(
                          "Just in case of this, i could consider this about the most important than this",
                        ),
                      ],
                    ),
                  ),

                  Container(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Favourite Adventure",
                          style: TextStyle(
                              fontSize: 26, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "At the age of 23, i had so many things that i wanted and also made the best of them almost every day i saw one.\n\nI never thought os anything that could be more \nrevealing than this.",
                        ),
                        Text(
                          "Noting much important than that the very best of the things tha someone would ask about",
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
