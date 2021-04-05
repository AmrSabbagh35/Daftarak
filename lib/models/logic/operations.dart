import 'package:flutter/cupertino.dart';
import 'package:test_login/enum/type.dart';

class Operations {
  int id;
  static int counter = 0;
  final String title;
  final String description;
  final int value;
  final DateTime date;
  final IType type;
  bool isToday;

  Operations(this.title, this.description, this.value, this.date, this.type,
      this.isToday) {
    id = counter++;
  }
}
