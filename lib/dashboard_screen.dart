import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/home_screen.dart';
import 'package:flutter_application_1/menu_screen.dart';
import 'package:flutter_application_1/profile_screen.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  final iconList = [Icons.home, Icons.person, Icons.info];
  int _bottomNavIndex = 0;
  final _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView(
          physics: NeverScrollableScrollPhysics(),
          controller: _pageController,
          children: [HomeScreen(), ProfileScreen(), MenuScreen()],
        ),
      ),
      bottomNavigationBar: AnimatedBottomNavigationBar.builder(
        gapLocation: GapLocation.none,
        itemCount: iconList.length,
        tabBuilder: (int index, bool isActive) {
          final color = isActive ? Colors.blueGrey : Colors.white;
          return Icon(iconList[index], size: 24, color: color);
        },
        backgroundColor: Colors.lightBlueAccent,
        activeIndex: _bottomNavIndex,

        splashSpeedInMilliseconds: 300,
        onTap: (index) {
          setState(() => _bottomNavIndex = index);
          _pageController.animateToPage(
            index,
            duration: Duration(seconds: 1),
            curve: Curves.linear,
          );
        },

        shadow: BoxShadow(
          offset: Offset(0, 1),
          blurRadius: 12,
          spreadRadius: 0.5,
          color: Colors.lightGreen,
        ),
      ),
    );
  }
}
