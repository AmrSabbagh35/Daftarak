import 'package:flutter/cupertino.dart';
import 'package:test_login/enum/type.dart';


class Operations {
  final String id;
  final String title;
  final String description;
  final int value;
  final DateTime date;
  final IType type;
  final bool isToday;

  Operations(this.id, this.title, this.description, this.value, this.date,
      this.type, this.isToday);
}
