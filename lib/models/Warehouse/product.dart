import 'package:test_login/models/Warehouse/category.dart';
import 'package:test_login/models/Warehouse/subcategory.dart';

class Product {
  int id;
  static int counter = 0;
  String name;
  int minAmount;

  Product({this.name, this.minAmount}) {
    id = counter++;
  }

  Map<String, dynamic> toMap() {
    final map = Map<String, dynamic>();
    map['name'] = name;
    map['minAmount'] = minAmount;

    return map;
  }
}
