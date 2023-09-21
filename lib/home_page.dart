import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawer: const Drawer(),
      appBar: AppBar(
        backgroundColor: Colors.white10,
        shadowColor: Colors.transparent,
        title: const Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(
              Icons.restaurant_menu_rounded,
              color: Colors.black,
            ),
            Text(
              'Restaurant Reservation',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
          ],
        ),
        actions: [
          IconButton(
              icon: const Icon(
                Icons.logout,
                color: Colors.black,
              ),
              onPressed: () {}),
        ],
      ),
      body: const Center(
        child: Text('Hello World'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
        onTap: (value) {},
      ),
    );
  }
}
