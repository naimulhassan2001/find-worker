
import 'package:find_worker/view/screen/hire%20list/hire_list_screen.dart';
import 'package:find_worker/view/screen/profile_screen/profile_screen.dart';
import 'package:flutter/material.dart';

import '../../../../utils/app_image.dart';
import '../../categories_screen.dart';
import '../home_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int currentIndex = 0;

  List navigationPagesList = [
    const HomeScreen(),
    CategoriesScreen(),
    HireListScreen(),
    const ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 88,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          color: Color(0xFF0668E3),
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: const Color(0xFF0668E3),
            selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.white.withOpacity(0.7),
            showSelectedLabels: true,
            showUnselectedLabels: false,
            // unselectedItemColor: Colors.black,
            currentIndex: currentIndex,
            onTap: (index) {
              setState(() {
                currentIndex = index;
              });},
            items: [
              BottomNavigationBarItem(icon:
              Image.asset(currentIndex == 0? AppImage.homeSolidNavIcon:AppImage.homeNavIcon), label: "Home"),
              BottomNavigationBarItem(icon:
              Image.asset(currentIndex == 1? AppImage.categorySolidNavIcon:AppImage.categoryNavIcon), label: "Category"),
              BottomNavigationBarItem(icon:
              Image.asset(currentIndex == 2? AppImage.hireListSolidNavIcon:AppImage.hireListNavIcon), label: "Hire List"),
              BottomNavigationBarItem(icon:
              Image.asset(currentIndex == 3? AppImage.profileSolidNavIcon:AppImage.profileNavIcon), label: "Profile"),
            ]),
      ),
      body: navigationPagesList[currentIndex],
    );
  }
}


