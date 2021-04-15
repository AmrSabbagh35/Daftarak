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
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                child: Card(
                  color: Colors.green[400],
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Categories",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 28.0,
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.start,
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Icon(
                            Icons.category_rounded,
                            color: Colors.white,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(9),
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 20.0),
                    ExpansionPanelList.radio(
                      initialOpenPanelValue: 2,
                      children: _data.map<ExpansionPanelRadio>((Item item) {
                        return ExpansionPanelRadio(
                            value: item.id,
                            headerBuilder:
                                (BuildContext context, bool isExpanded) {
                              return ListTile(
                                title: Text(item.headerValue),
                              );
                            },
                            body: InkWell(
                              onTap: () => AlertDialog(
                                title: Text('Product Details'),
                                actions: [
                                  Column(
                                    children: [
                                      Text('Name :'),
                                      Text('Expiration Date :'),
                                      Text('Amount :'),
                                      Text('ID :'),
                                    ],
                                  ),
                                  FlatButton(
                                      onPressed: () =>
                                          Navigator.of(context).pop(),
                                      child: Text('Go Back'))
                                ],
                              ),
                              child: ListTile(
                                title: Text(item.expandedValue),
                              ),
                            ));
                      }).toList(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
