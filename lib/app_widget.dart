import 'package:flutter/material.dart';
import 'package:restaurant_reservation/home_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Restaurant Reservation',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      home: const HomePage(),
    );
  }
}
