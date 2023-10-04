import 'package:flutter/material.dart';
import 'package:restaurant_reservation/app_container.dart';
import 'package:restaurant_reservation/app/views/home_view.dart';
import 'package:restaurant_reservation/app/views/login_view.dart';
import 'package:restaurant_reservation/app/views/profile_view.dart';
import 'package:restaurant_reservation/app/views/register_view.dart';
import 'package:restaurant_reservation/app/views/reservation_view.dart';

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
        '/': (context) => const LoginView(),
        '/register': (context) => const RegisterView(),
        '/app': (context) => const AppContainer(),
        '/home': (context) => const HomeView(),
        '/reservation': (context) => const ReservationView(),
        '/profile': (context) => const ProfileView(),
      },
    );
  }
}
