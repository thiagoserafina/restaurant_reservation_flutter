import 'package:flutter/material.dart';

class SettingsView extends StatefulWidget {
  const SettingsView({super.key});

  @override
  State<SettingsView> createState() {
    return SettingsViewState();
  }
}

class SettingsViewState extends State<SettingsView> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            children: [
              Column(
                children: [Text('Configurações')],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
