import 'package:flutter/material.dart';

class NewItem extends StatefulWidget {
  final Function addTx;

  const NewItem({Key key, this.addTx});
  @override
  _NewItemState createState() => _NewItemState();
}

class _NewItemState extends State<NewItem> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Add a Product : ",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
        // Center(
        //   child: TextField(
        //     controller: itemController,
        //     onSubmitted: (text) {
        //       litems.add(text);
        //       itemController.clear();
        //       setState(() {});
        //     },
        //   ),
        // ),
      ],
    );
  }
}
