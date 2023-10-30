import 'package:flutter/material.dart';
import 'package:restaurant_reservation/models/User.dart';
import 'package:sqflite/sqflite.dart';

class ContaRepository extends ChangeNotifier {
  late Database db;
  List<User> contas = [];
}
