import 'package:flutter/material.dart';
import 'package:flutter_2/screen/premium_screen.dart';
import 'package:flutter_2/screen/trending_screen.dart';
import 'package:flutter_2/screen/video_screen.dart';
import '../signIn-signUp/signUp_screen.dart';
import 'home/home_screen.dart';
import 'latest_screen.dart';

class BottomNavbar extends StatefulWidget {
  @override
  _BottomNavbarState createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  int currentIndex = 0;

  final screens = [
    HomeScreen(),
    LatestScreen(),
    VideoScreen(),
    PremiumScreen(),
    TrendingScreen(),
    SignUpScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar with automaticallyImplyLeading = "true" (Default)
      body: screens[currentIndex],

      // Bottom navigation Bar
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.newspaper),
            label: 'Tin Tức',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.fiber_new_sharp),
            label: 'Mới nhất',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.smart_display_rounded), label: 'Video'),
          BottomNavigationBarItem(icon: Icon(Icons.diamond), label: 'Premium'),
          BottomNavigationBarItem(
              icon: Icon(Icons.local_fire_department), label: 'Xu hướng'),
          BottomNavigationBarItem(
              icon: Icon(Icons.grid_view_sharp), label: 'Tiện ích')
        ],
      ),
    );
  }
}
