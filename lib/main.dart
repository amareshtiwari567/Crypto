import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/material/bottom_navigation_bar.dart';

void main() {
  runApp(MaterialApp(
    title: "Crypto",
    home: Homepage(),
  ));
}

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Crypto"),
        backgroundColor: Colors.deepOrange,
      ),
      bottomNavigationBar: BottomNavigationBar(
        // backgroundColor: Colors.deepOrange,
        items: [
          BottomNavigationBarItem(icon: new Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: new Icon(Icons.account_balance_wallet), label: "Wallet"),
          BottomNavigationBarItem(
              icon: new Icon(Icons.person), label: "Profile"),
        ],
        backgroundColor: Colors.white.withOpacity(0.9),
      ),
      body: content(),
    );
  }
}

Widget content() {
  return Container(
    child: Column(
      children: [
        Container(
            height: 230,
            color: Colors.teal,
            child: Align(
              alignment: Alignment.center,
              child: Text(
                "Xcoin",
                style: TextStyle(color: Colors.black),
              ),
            ))
      ],
    ),
  );
}
