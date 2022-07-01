// ignore_for_file: file_names, non_constant_identifier_names, prefer_const_literals_to_create_immutables

import 'package:auth_oriza/Screens/HomePage/home_page.dart';
import 'package:auth_oriza/Screens/LibraryPage/library_page.dart';
import 'package:auth_oriza/Screens/ProfilePage/profile_page.dart';
import 'package:auth_oriza/Screens/SearchPage/search_page.dart';
import 'package:auth_oriza/constant.dart';
import 'package:flutter/material.dart';

class MainNavBar extends StatefulWidget {
  const MainNavBar({Key? key}) : super(key: key);

  @override
  State<MainNavBar> createState() => _MainNavBarState();
}

class _MainNavBarState extends State<MainNavBar> {
  int CurrentIndex = 0;
  final Screens = [
    HomePage(),
    SearchPage(),
    LibraryPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   centerTitle: true,
      //   title: Text(
      //     'Home',
      //     style: TextStyle(
      //       fontWeight: FontWeight.w500,
      //       fontSize: 20,
      //     ),
      //   ),
      //   backgroundColor: kGreenBase,
      // ),
      body: Screens[CurrentIndex],
      backgroundColor: kWhiteBase,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: kGreenBase,
        selectedItemColor: kWhiteBase,
        // showUnselectedLabels: false,
        currentIndex: CurrentIndex,
        onTap: (index) => setState(() => CurrentIndex = index),
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              // color: kBlackBase,
            ),
            label: "Home",
            // backgroundColor: kGreenBase,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search_sharp,
              // color: kBlackBase,
            ),
            label: "Search",
            // backgroundColor: kGreenBase,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.library_books,
              // color: kBlackBase,
            ),
            label: "Library",
            // backgroundColor: kGreenBase,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_sharp,
              // color: kBlackBase,
            ),
            label: "Profile",
            // backgroundColor: kGreenBase,
          ),
        ],
      ),
    );
  }
}
