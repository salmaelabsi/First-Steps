/*Code by Iman Nabil*/
import 'package:first_steps/screens/recommendation_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../assets/colors.dart';
import 'calendar_screen.dart';
import 'development_screen.dart';
import 'home_screen.dart';

class BaseScreen extends StatefulWidget {
  BaseScreen({Key? key}) : super(key: key);

  @override
  _BaseScreenState createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  int _selectedIndex = 1;

  navigateTo(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget _bottomAppBarIcon({required int index, required IconData icon}) {
    return IconButton(
      onPressed: () {
        navigateTo(index);
      },
      icon: Icon(
        icon,
        color: _selectedIndex == index ? kPrimaryColor : null,
      ),
      iconSize: 35,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
          child: SafeArea(
        child: Container(
          height: 70,
          color: kbottomAppBarColor,
          child: Material(
            type: MaterialType.transparency,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _bottomAppBarIcon(index: 0, icon: Icons.calendar_month_rounded),
                _bottomAppBarIcon(index: 1, icon: Icons.home),
                _bottomAppBarIcon(
                    index: 2, icon: FontAwesomeIcons.babyCarriage),
                _bottomAppBarIcon(
                    index: 3, icon: FontAwesomeIcons.solidCircleQuestion),
              ],
            ),
          ),
        ),
      )),
      body: Container(
        decoration: const BoxDecoration(color: kBackGroundColor),
        child: IndexedStack(
          index: _selectedIndex,
          children: [
            CalendarScreen(),
            HomeScreen(),
            DevelopmentScreen(),
            RecommendationScreen(),
          ],
        ),
      ),
    );
  }
}
