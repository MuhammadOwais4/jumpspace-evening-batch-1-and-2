import 'package:class_4/screens/tic_tac_toe.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Tic Tac Toe",
      theme: ThemeData(
        fontFamily: "Coiny",
        textTheme: const TextTheme(
          titleMedium: TextStyle(
            fontSize: 24,
            color: Colors.white,
            letterSpacing: 3,
          ),
        ),
      ),
      home: const TicTacToe(),
    ),
  );
}
