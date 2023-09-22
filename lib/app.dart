import 'package:flutter/material.dart';
import 'package:restaurant_reservation/home_page.dart';
import 'package:restaurant_reservation/pages/profile_page.dart';
import 'package:restaurant_reservation/pages/reservation_page.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() {
    return AppState();
  }
}

class AppState extends State<App> {
  int _currentPageIndex = 0;

  final List<Widget> _pages = [
    const HomePage(),
    const ReservationPage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(10),
          child: Divider(
            color: Colors.black12,
            height: 10,
            thickness: 1,
            indent: 0,
            endIndent: 0,
          ),
        ),
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.restaurant_menu_rounded),
            SizedBox(width: 10),
            Text(
              'EasyTable',
              // textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontFamily: 'Satisfy',
                  letterSpacing: 5),
            ),
          ],
        ),
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
