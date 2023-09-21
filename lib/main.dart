import 'package:flutter/material.dart';

void main() {
  runApp(AppWidget());
}

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: const Center(
      child: Text(
        'Hello World',
        textDirection: TextDirection.rtl,
        style: TextStyle(color: Colors.white, fontSize: 50.0),
      ),
    ));
  }
}
