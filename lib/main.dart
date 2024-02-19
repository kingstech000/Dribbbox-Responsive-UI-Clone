// ignore_for_file: prefer_const_constructors, unused_import

import 'package:flutter/material.dart';
import 'homepage.dart';
import 'profile_page.dart';
import 'login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ProfilePage(),
      ),
    );
  }
}
