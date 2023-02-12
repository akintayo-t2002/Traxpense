import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:traxpense/screens/analytics_screen.dart';
import 'package:traxpense/screens/home_screen.dart';
import 'package:traxpense/screens/profile_screen.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {

  List<Widget> screens=const [
   HomeScreen(),
   AnalyticsScreen(),
   ProfileScreen(),
  ];

  int selectedIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation:FloatingActionButtonLocation.centerFloat,
      floatingActionButton:FloatingActionButton(
        onPressed:(){
          log('clicked');
        },
        backgroundColor:Colors.white,
        child:Image.asset('assets/icons/plus.png',color:const Color(0XFF3430CA),),
      ),
      body:screens[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon:Image.asset('assets/icons/homepage.png',color:const Color(0XFF3430CA),),
              label:'Home',
            ),
            BottomNavigationBarItem(
              icon:Image.asset('assets/icons/bar-chart.png',color:const Color(0XFF3430CA),),
              label:'Analytics',
            ),
            BottomNavigationBarItem(
              icon:Image.asset('assets/icons/user.png',color:const Color(0XFF3430CA),),
              label:'Profile',
            ),
          ],
          onTap:(index){
            setState(() {
              selectedIndex=index;
            });
          },
          currentIndex:selectedIndex,
          showSelectedLabels:false,
          showUnselectedLabels:false,
        ),
    );
  }
}