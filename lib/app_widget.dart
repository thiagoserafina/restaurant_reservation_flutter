import 'package:flutter/material.dart';
import 'package:restaurant_reservation/pages/home_page.dart';
import 'package:restaurant_reservation/pages/profile_page.dart';
import 'package:restaurant_reservation/pages/reservation_page.dart';

class AppWidget extends StatefulWidget {
  const AppWidget({super.key});

  @override
  State<AppWidget> createState() {
    return AppState();
  }
}

class AppState extends State<AppWidget> {
  int _currentPageIndex = 0;

  final List<Widget> _pages = [
    const HomePage(),
    const ReservationPage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black87,
        surfaceTintColor: Colors.white,
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(0.0),
          child: Divider(
            height: 0.0,
            thickness: 0.5,
            color: Colors.black38,
          ),
        ),
        centerTitle: true,
        title: TextButton.icon(
            onPressed: () {
              setState(() {
                _currentPageIndex = 0;
              });
            },
            icon: const Icon(
              Icons.restaurant_menu_rounded,
              color: Colors.black87,
              size: 30,
            ),
            label: const Text('EasyTable',
                style: TextStyle(
                    color: Colors.black87,
                    fontFamily: 'Satisfy',
                    fontSize: 25,
                    letterSpacing: 5,
                    fontWeight: FontWeight.bold)),
            style: ButtonStyle(
              overlayColor: MaterialStateProperty.all(Colors.transparent),
            )),
      ),
      body: _pages[_currentPageIndex],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          // Set splashColor and splashRadius to transparent values to remove the splash animation
          splashColor: Colors.transparent,
          highlightColor: Colors.black12,
          splashFactory: InkSplash.splashFactory,
        ),
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          enableFeedback: true,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.table_restaurant_rounded),
                label: 'Reservation'),
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
      ),
    );
  }
}
