import 'package:flutter/material.dart';
import 'package:myapp/homepage.dart';
import 'package:myapp/pages/account.dart';
import 'package:myapp/pages/home.dart';
import 'package:myapp/pages/reels.dart';
import 'package:myapp/pages/search.dart';
import 'package:myapp/pages/shop.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  void _navigateBottomNavBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _children = [
    UserHome(),
    UserSearh(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.fixed,
        onTap: _navigateBottomNavBar,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'search'),
        ],
      ),
    );
  }
}
