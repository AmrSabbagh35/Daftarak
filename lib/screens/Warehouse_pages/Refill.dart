import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';

class Refill_Screen extends StatefulWidget {
  @override
  _Refill_ScreenState createState() => _Refill_ScreenState();
}

class _Refill_ScreenState extends State<Refill_Screen> {
  List<String> productsitem = ['item1', 'item2', 'item3'];
  List<String> categoryitems = ['A', 'B', 'C', 'D'];
  List<String> subcategoryitems = ['1', '2', '3', '4'];
  String _chosenvalue;
  String _chosenvalue2;
  String _chosenvalue3;

  File _image;

  Future getImage() async {
    final image =
        await ImagePicker.platform.pickImage(source: ImageSource.camera);
    setState(() {
      _image = image as File;
    });
  }

  Future getGallery() async {
    final image =
        await ImagePicker.platform.pickImage(source: ImageSource.gallery);
    setState(() {
      _image = image as File;
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenheight = ScreenUtil().screenHeight;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => showModalBottomSheet(
            isScrollControlled: false,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30), topRight: Radius.circular(30)),
            ),
            context: context,
            builder: (context) {
              return SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Choose',
                            style: TextStyle(fontSize: 30),
                          ),
                          SizedBox(
                            width: 40,
                          ),
                        ],
                      ),
                    ),
                    ListTile(
                      leading: Icon(Icons.camera),
                      title: Text('Take a photo'),
                      onTap: getImage,
                    ),
                    ListTile(
                      leading: Icon(Icons.photo),
                      title: Text('From Gallery'),
                      onTap: getGallery,
                    ),
                  ],
                ),
              );
            }),
        child: Icon(Icons.camera_alt),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.arrow_back_ios,
                          color: Colors.blue[600],
                        ),
                        InkWell(
                          onTap: () => Navigator.pop(context),
                          child: Text('Back',
                              style: TextStyle(
                                  fontSize: 20, color: Colors.blue[600])),
                        ),
                        SizedBox(
                          width: 70,
                        ),
                        Text('Refill Products',
                            style: TextStyle(fontSize: 30, color: Colors.black))
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: Center(
                          child: DropdownButton<String>(
                            elevation: 5,
                            iconSize: 35,
                            // itemHeight: 1,
                            dropdownColor: Colors.grey[100],
                            value: _chosenvalue,
                            hint: Text(
                              'Category',
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
                              });
                            },
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: Center(
                          child: DropdownButton<String>(
                            elevation: 5,
                            iconSize: 35,
                            dropdownColor: Colors.grey[100],
                            value: _chosenvalue2,
                            hint: Text(
                              'Subcategory',
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
                              });
                            },
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: Center(
                          child: DropdownButton<String>(
                            elevation: 5,
                            iconSize: 35,
                            dropdownColor: Colors.grey[100],
                            value: _chosenvalue3,
                            hint: Text(
                              'Products',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600),
                            ),
                            iconEnabledColor: Colors.blueGrey,
                            iconDisabledColor: Colors.blue,
                            items: productsitem.map((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                            onChanged: (String value) {
                              setState(() {
                                _chosenvalue3 = value;
                              });
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          width: 100.0,
                          child: TextField(
                              decoration: InputDecoration(hintText: 'QTY'),
                              style: TextStyle(
                                  fontSize: 20.0,
                                  height: 2.0,
                                  color: Colors.black))),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                          width: 100.0,
                          child: TextField(
                              decoration: InputDecoration(hintText: 'Price'),
                              style: TextStyle(
                                  fontSize: 20.0,
                                  height: 2.0,
                                  color: Colors.black))),
                      SizedBox(
                        width: 40,
                      ),
                      FloatingActionButton(
                        child: Icon(Icons.add),
                        onPressed: () {},
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: double.infinity,
                    height: screenheight / 2,
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.black)),
                    child: SingleChildScrollView(
                      child: DataTable(
                        columns: const <DataColumn>[
                          DataColumn(
                            label: Text(
                              'Name',
                              style: TextStyle(fontStyle: FontStyle.italic),
                            ),
                          ),
                          DataColumn(
                            label: Text(
                              'Quantity',
                              style: TextStyle(fontStyle: FontStyle.italic),
                            ),
                          ),
                          DataColumn(
                            // numeric: true,
                            label: Text(
                              'Price',
                              style: TextStyle(fontStyle: FontStyle.italic),
                            ),
                          ),
                        ],
                        rows: const <DataRow>[
                          DataRow(
                            cells: <DataCell>[
                              DataCell(
                                Text('Sarah'),
                              ),
                              DataCell(Text('19')),
                              DataCell(Text('Student')),
                            ],
                          ),
                          DataRow(
                            cells: <DataCell>[
                              DataCell(Text('Janine')),
                              DataCell(Text('43')),
                              DataCell(Text('Professor')),
                            ],
                          ),
                          DataRow(
                            cells: <DataCell>[
                              DataCell(Text('William')),
                              DataCell(Text('27')),
                              DataCell(Text('Associate Professor')),
                            ],
                          ),
                          DataRow(
                            cells: <DataCell>[
                              DataCell(Text('Sarah')),
                              DataCell(Text('19')),
                              DataCell(Text('Student')),
                            ],
                          ),
                          DataRow(
                            cells: <DataCell>[
                              DataCell(Text('Janine')),
                              DataCell(Text('43')),
                              DataCell(Text('Professor')),
                            ],
                          ),
                          DataRow(
                            cells: <DataCell>[
                              DataCell(Text('William')),
                              DataCell(Text('27')),
                              DataCell(Text('Associate Professor')),
                            ],
                          ),
                          DataRow(
                            cells: <DataCell>[
                              DataCell(Text('Sarah')),
                              DataCell(Text('19')),
                              DataCell(Text('Student')),
                            ],
                          ),
                          DataRow(
                            cells: <DataCell>[
                              DataCell(Text('Janine')),
                              DataCell(Text('43')),
                              DataCell(Text('Professor')),
                            ],
                          ),
                          DataRow(
                            cells: <DataCell>[
                              DataCell(Text('William')),
                              DataCell(Text('27')),
                              DataCell(Text('Associate Professor')),
                            ],
                          ),
                          DataRow(
                            cells: <DataCell>[
                              DataCell(Text('Sarah')),
                              DataCell(Text('19')),
                              DataCell(Text('Student')),
                            ],
                          ),
                          DataRow(
                            cells: <DataCell>[
                              DataCell(Text('Janine')),
                              DataCell(Text('43')),
                              DataCell(Text('Professor')),
                            ],
                          ),
                          DataRow(
                            cells: <DataCell>[
                              DataCell(Text('William')),
                              DataCell(Text('27')),
                              DataCell(Text('Associate Professor')),
                            ],
                          ),
                        ],
                      ),
                    ),
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
