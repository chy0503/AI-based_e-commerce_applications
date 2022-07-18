import 'package:baljachwi_project/screens/catalog_list_screen.dart';
import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:baljachwi_project/screens/mypage/mypage_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //debugShowCheckedModeBanner: false,
      home: mypage(),
    );
  }
}
