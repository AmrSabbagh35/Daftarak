import 'package:flutter/material.dart';

class FAB_Widget extends StatefulWidget {
  @override
  _FAB_WidgetState createState() => _FAB_WidgetState();
}

class _FAB_WidgetState extends State<FAB_Widget> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        _createNewItem(context);
      },
      child: CircleAvatar(
          child: Icon(
        Icons.calculate,
      )),
    );
  }
}

void _createNewItem(BuildContext context) {
  showModalBottomSheet<void>(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50),
      ),
      backgroundColor: Colors.grey[100],
      builder: (_) {
        return GestureDetector(
          onTap: () {},
          child: Column(
            children: [
              Text("Add a Product : ",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
              Center(child: TextField()),
            ],
          ),
        );
      });
}
