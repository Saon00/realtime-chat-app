import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:realtimechat/screens/bottom_nav_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.greenAccent.shade100,
      ),
      debugShowCheckedModeBanner: false,
      home: const BottomNavScreen(),
    );
  }
}
