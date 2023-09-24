import 'package:flutter/material.dart';
import 'package:restaurant_reservation/app_container.dart';
import 'package:restaurant_reservation/pages/home_page.dart';
import 'package:restaurant_reservation/pages/login_page.dart';
import 'package:restaurant_reservation/pages/profile_page.dart';
import 'package:restaurant_reservation/pages/register_page.dart';
import 'package:restaurant_reservation/pages/reservation_page.dart';

void main() {
  runApp(const AppWidget());
}

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EasyTable',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueGrey),
        useMaterial3: true,
        primarySwatch: Colors.blueGrey,
        brightness: Brightness.light,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginPage(),
        '/register': (context) => const RegisterPage(),
        '/app': (context) => const AppContainer(),
        '/home': (context) => const HomePage(),
        '/reservation': (context) => const ReservationPage(),
        '/profile': (context) => const ProfilePage(),
      },
    );
  }
}
