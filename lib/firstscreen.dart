import 'dart:io';

import 'package:flutter/material.dart';

import 'Azkar.dart';

class firstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffcad741),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "مرحباً بك في تطبيق أذكار",
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => azkar(),
                    ));
              },
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 15),
                width: 160,
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25)),
                child: Center(
                    child: Text(
                  'الدخول للتطبيق',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                )),
              ),
            ),
            InkWell(
              onTap: () {
                exit(0);
              },
              child: Container(
                width: 160,
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25)),
                child: Center(
                  child: Text("الخروج من التطبيق",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      )),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
