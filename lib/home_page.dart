import 'package:flutter/material.dart';
import 'package:restaurant_reservation/home_screen.dart';
import 'package:restaurant_reservation/login_page.dart';
import 'package:restaurant_reservation/profile_screen.dart';
import 'package:restaurant_reservation/reservation_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int _currentPageIndex = 0;

  final List<Widget> _pages = [
    const HomeScreen(),
    const ReservationScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.white10,
        shadowColor: Colors.transparent,
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
                tooltip: 'Home',
                splashRadius: 20,
                iconSize: 25,
                icon: const Icon(
                  Icons.restaurant_menu_rounded,
                  color: Colors.black,
                ),
                onPressed: () {}),
            const Text(
              'EasyTable',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontFamily: 'Satisfy',
                  letterSpacing: 5),
            ),
          ],
        ),
        centerTitle: true,
        titleSpacing: 10,
        actions: [
          IconButton(
              tooltip: 'Log out',
              splashRadius: 20,
              iconSize: 25,
              icon: const Icon(
                Icons.logout,
                color: Colors.black,
              ),
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => const LoginPage(),
                  ),
                );
              }),
        ],
      ),
      body: _pages[_currentPageIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.table_restaurant_rounded), label: 'Reservation'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
        currentIndex: _currentPageIndex,
        selectedFontSize: 12,
        onTap: (value) {
          setState(() {
            _currentPageIndex = value;
          });
        },
      ),
    );
  }
}
