import 'package:flutter/material.dart';
import 'package:restaurant_reservation/app/views/home_view.dart';
import 'package:restaurant_reservation/app/views/profile_view.dart';
import 'package:restaurant_reservation/app/views/reservation_view.dart';
import 'package:restaurant_reservation/app/views/settings_view.dart';

class AppContainer extends StatefulWidget {
  const AppContainer({super.key});

  @override
  State<AppContainer> createState() {
    return AppState();
  }
}

class AppState extends State<AppContainer> {
  int _currentPageIndex = 0;

  final List<Widget> _pages = [
    const HomeView(),
    const ReservationView(),
    const ProfileView(),
    const SettingsView()
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
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blueGrey,
              ),
              margin: EdgeInsets.all(0),
              padding: EdgeInsets.all(0),
              child: UserAccountsDrawerHeader(
                  accountName: Text("Thiago"),
                  margin: EdgeInsets.all(0),
                  decoration: BoxDecoration(color: Colors.transparent),
                  arrowColor: Colors.black87,
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://avatars.githubusercontent.com/u/85206010?v=4'),
                  ),
                  accountEmail: Text("thiago.serafina@outlook.com")),
            ),
            ListTile(
              leading: const Icon(Icons.home_rounded),
              title: const Text('Home'),
              onTap: () {
                setState(() {
                  _currentPageIndex = 0;
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.shopping_bag_rounded),
              title: const Text('My reservations'),
              onTap: () {
                setState(() {
                  _currentPageIndex = 1;
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Profile'),
              onTap: () {
                setState(() {
                  _currentPageIndex = 2;
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Settings'),
              onTap: () {
                setState(() {
                  _currentPageIndex = 3;
                });
                Navigator.pop(context);
              },
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.42),
            TextButton.icon(
              onPressed: () {
                Navigator.of(context).pushReplacementNamed('/');
              },
              icon: const Icon(Icons.logout),
              label: const Text('Log out'),
              style: const ButtonStyle(splashFactory: NoSplash.splashFactory),
            )
          ],
        ),
      ),
    );
  }
}
