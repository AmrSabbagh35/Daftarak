import 'package:test_login/models/Warehouse/category.dart';
import 'package:test_login/models/Warehouse/subcategory.dart';

class Product {
  int id;
  String name;
  int minAmount;
  Product({this.name, this.minAmount});
  Product.withId({this.id, this.name, this.minAmount});

  Map<String, dynamic> toMap() {
    final map = Map<String, dynamic>();
    if (id != null) {
      map['id'] = id;
    }
    map['name'] = name;
    map['minAmount'] = minAmount;

    return map;
  }

  factory Product.fromMap(Map<String, dynamic> map) {
    return Product.withId(
      id: map['id'],
      name: map['name'],
      minAmount: map['minAmount'],
    );
  }
}
