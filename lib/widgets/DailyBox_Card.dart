import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DailyBox_Card extends StatefulWidget {
  @override
  _DailyBox_CardState createState() => _DailyBox_CardState();
}

class _DailyBox_CardState extends State<DailyBox_Card> {
  @override
  Widget build(BuildContext context) {
    final screensize = MediaQuery.of(context).size.height;
    final screewidth = MediaQuery.of(context).size.width;

    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      elevation: 10,
      child: Stack(
        children: [
          InkWell(
            splashColor: Colors.green,
            onTap: () {
              print('tapped');
            },
            child: Container(
              color: Colors.white,
              // child: Column(
              //   crossAxisAlignment: CrossAxisAlignment.start,
              //   children: [Text('Your Status :')],
              // ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                color: Color.fromRGBO(76, 179, 74, 0.7),
                height: double.infinity,
                width: 95,
                child: Icon(
                  Icons.arrow_drop_up_outlined,
                  size: 40,
                ),
              ),
            ],
          ),
          // Positioned(
          //     top: 0,
          //     bottom: 0,
          //     right: screensize / 4,
          //     left: 0,
          //     child: VerticalDivider(
          //       thickness: 2,
          //     )),
          // Positioned(
          //     top: 20,
          //     right: screewidth / 2 - 20,
          //     child: Text(
          //       'Your Status : ',
          //       style: TextStyle(fontSize: 20),
          //     ))
        ],
      ),
    );
  }
}
