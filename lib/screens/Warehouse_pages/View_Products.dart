import 'package:flutter/material.dart';

class View_Products extends StatefulWidget {
  @override
  _View_ProductsState createState() => _View_ProductsState();
}

// stores ExpansionPanel state information
class Item {
  int id;
  String expandedValue;
  String headerValue;
  Item({this.id, this.expandedValue, this.headerValue});
}

List<Item> generateItems(int numberOfItems) {
  return List<Item>.generate(numberOfItems, (int index) {
    return Item(
      id: index,
      headerValue: 'Category $index',
      expandedValue: 'Subcategory $index',
    );
  });
}

class _View_ProductsState extends State<View_Products> {
  @override
  Widget build(BuildContext context) {
    List<Item> _data = generateItems(20);
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 50),
        child: SingleChildScrollView(
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.arrow_back_ios,
                    color: Colors.blue[600],
                  ),
                  Text('Back',
                      style: TextStyle(fontSize: 20, color: Colors.blue[600])),
                  SizedBox(
                    width: 70,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Categories",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 28.0,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.start,
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Icon(
                          Icons.category_rounded,
                          color: Colors.black,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
