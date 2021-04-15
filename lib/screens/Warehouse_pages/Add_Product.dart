import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_login/models/Warehouse/category.dart';
import 'package:test_login/models/Warehouse/product.dart';
import 'package:test_login/models/Warehouse/subcategory.dart';

class Add_Product extends StatefulWidget {
  final Product product;

  const Add_Product({Key key, this.product}) : super(key: key);
  @override
  _Add_ProductState createState() => _Add_ProductState();
}

class _Add_ProductState extends State<Add_Product> {
  TextEditingController _textFieldController = TextEditingController();
  TextEditingController _textFieldController2 = TextEditingController();
  final _formkey = GlobalKey<FormState>();
  List<String> categoryitems = [];
  List<String> subcategoryitems = [];
  String _chosenvalue;
  String _chosenvalue2;
  String _name = '';
  int _minAmount = 0;
  String textinput;

  @override
  void initState() {
    super.initState();
    if (widget.product != null) {
      _name = widget.product.name;
      _minAmount = widget.product.minAmount;
    }

    categoryitems = ['Add Categories'];
    subcategoryitems = ['Add Subcategories'];
    categoryitems.sort((a, b) => a.toString().compareTo(b.toString()));
  }

  @override
  Widget build(BuildContext context) {
    _addButton() {
      if (_formkey.currentState.validate()) {
        _formkey.currentState.save();
        Product product = Product(name: _name, minAmount: _minAmount);
        product.id = widget.product.id;
        Navigator.of(context).pop();
      }
    }

    _addCategory() {
      categoryitems.insert(1, _textFieldController.text);
      _chosenvalue = _textFieldController.text;
      _textFieldController.clear();
      Navigator.pop(context);
    }

    Future<void> _displayCategoryDialog(BuildContext context) async {
      return showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: Text('Add a Category'),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusDirectional.circular(20)),
              content: TextField(
                controller: _textFieldController,
                decoration: InputDecoration(hintText: "Enter Your Category"),
              ),
              actions: <Widget>[
                FlatButton(
                  color: Colors.red,
                  textColor: Colors.white,
                  child: Text('Cancel'),
                  onPressed: () {
                    setState(() {
                      Navigator.pop(context);
                    });
                  },
                ),
                FlatButton(
                  color: Colors.green,
                  textColor: Colors.white,
                  child: Text('OK'),
                  onPressed: _addCategory(),
                ),
              ],
            );
          });
    }

    Future<void> _displaySubCategoryDialog(BuildContext context) async {
      return showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: Text('Add a Sub Product'),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusDirectional.circular(20)),
              content: TextField(
                controller: _textFieldController2,
                decoration: InputDecoration(hintText: "Enter Your Sub Product"),
              ),
              actions: <Widget>[
                FlatButton(
                  color: Colors.red,
                  textColor: Colors.white,
                  child: Text('Cancel'),
                  onPressed: () {
                    setState(() {
                      Navigator.pop(context);
                    });
                  },
                ),
                FlatButton(
                  color: Colors.green,
                  textColor: Colors.white,
                  child: Text('OK'),
                  onPressed: () {
                    setState(() {
                      subcategoryitems.insert(0, _textFieldController2.text);
                      _chosenvalue2 = _textFieldController2.text;
                      _textFieldController.clear();
                      Navigator.pop(context);
                    });
                  },
                ),
              ],
            );
          });
    }

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 30, horizontal: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.blue[600],
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    'Add a Product :',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 40,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Form(
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 20),
                          child: TextFormField(
                            style: TextStyle(fontSize: 18),
                            decoration: InputDecoration(
                                labelText: 'Name',
                                labelStyle: TextStyle(fontSize: 18),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10))),
                            validator: (input) => input.trim().isEmpty
                                ? 'Please Enter a Product Name !'
                                : null,
                          ),
                        ),
                        Padding(
                            padding: EdgeInsets.symmetric(vertical: 20),
                            child: DropdownButton<String>(
                              isExpanded: true,
                              elevation: 5,
                              isDense: true,
                              iconSize: 35,
                              dropdownColor: Colors.grey[100],
                              value: _chosenvalue,
                              hint: Text(
                                'Choose a Category',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600),
                              ),
                              iconEnabledColor: Colors.blueGrey,
                              iconDisabledColor: Colors.blue,
                              items: categoryitems.map((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                              onChanged: (String value) {
                                setState(() {
                                  _chosenvalue = value;
                                  if (value == categoryitems.first) {
                                    _displayCategoryDialog(context);
                                  }
                                });
                              },
                            )),
                        SizedBox(
                          height: 20.h,
                        ),
                        Padding(
                            padding: EdgeInsets.symmetric(vertical: 20),
                            child: DropdownButton<String>(
                              isExpanded: true,
                              elevation: 5,
                              isDense: true,
                              iconSize: 35,
                              dropdownColor: Colors.grey[100],
                              value: _chosenvalue2,
                              hint: Text(
                                'Choose a Sub Category',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600),
                              ),
                              iconEnabledColor: Colors.blueGrey,
                              iconDisabledColor: Colors.blue,
                              items: subcategoryitems.map((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                              onChanged: (String value) {
                                setState(() {
                                  _chosenvalue2 = value;
                                  if (value == subcategoryitems.last) {
                                    _displaySubCategoryDialog(context);
                                  }
                                });
                              },
                            )),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 20),
                          child: TextFormField(
                            style: TextStyle(fontSize: 18),
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                                labelText: 'Minimuim Amount',
                                labelStyle: TextStyle(fontSize: 18),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10))),
                            validator: (input) => input.trim().isEmpty
                                ? 'Please Enter an amount !'
                                : null,
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                            height: 50,
                            width: 300,
                            child: FlatButton(
                              color: Colors.blue[100],
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30)),
                              onPressed: () => _addButton(),
                              child: Text(
                                'Add',
                                style: TextStyle(fontSize: 20),
                              ),
                            ))
                      ],
                    ),
                    key: _formkey,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
