import 'package:flutter/material.dart';
import 'package:realtimechat/screens/contact_screen.dart';
import 'package:realtimechat/screens/chat_screen.dart';
import 'package:realtimechat/screens/profile_screen.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  final List<Widget> _screen = [
    const ChatScreen(),
    const ContactScreen(),
    const ProfileScreen()
  ];

  int _selectIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screen[_selectIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.greenAccent.shade100,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black45,
        currentIndex: _selectIndex,
        onTap: (value) {
          _selectIndex = value;
          if (mounted) {
            setState(() {});
          }
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Chat'),
          BottomNavigationBarItem(
              icon: Icon(Icons.people_alt_rounded), label: 'Contact'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_2_rounded), label: 'Pofile'),
        ],
      ),
    );
  }
}
