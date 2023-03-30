import 'dart:io';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          body: Container(
            color: Color(0xFF3D54A9),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "TIME FINDER",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: "FontdinerSwanky-Regular",
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 3.0,
                    ),
                  ),
                  SizedBox(height: 16),
                  Container(
                    margin: EdgeInsets.only(top: 16),
                    child: ElevatedButton(
                      onPressed: () {
                        // code to be executed when the button is pressed
                      },
                      child: Text(
                        "PROCEED",
                        style: TextStyle(
                          fontFamily: "FontdinerSwanky-Regular",
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        onPrimary: Color(0xFF3D54A9),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
