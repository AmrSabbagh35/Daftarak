import 'package:flutter/material.dart';
import 'package:hijri/hijri_calendar.dart';
import 'package:intl/intl.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_localization/easy_localization.dart';

class CalenderCard extends StatefulWidget {
  @override
  _CalenderCardState createState() => _CalenderCardState();
}

class _CalenderCardState extends State<CalenderCard> {
  static final DateTime now = DateTime.now();
  static final DateFormat dayformatter = DateFormat.d('en_US');
  final String dayformatted = dayformatter.format(now);

  static final DateFormat weekdayformatter = DateFormat.E('en_US');
  final String weekdayformatted = weekdayformatter.format(now);

  static final DateFormat monthformatter = DateFormat.MMMM('en_US');
  final String monthformatted = monthformatter.format(now);

  static final DateFormat yearformatter = DateFormat.y('en_US');
  final String yearformatted = yearformatter.format(now);

  var h_date = HijriCalendar.fromDate(DateTime.now());
  @override
  Widget build(BuildContext context) {
    final screensize = MediaQuery.of(context).size.width;
    final screewidth = MediaQuery.of(context).size.width;
    return Stack(
      alignment: Alignment.topCenter,
      children: <Widget>[
        Card(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          elevation: 10,
          child: Stack(
            children: <Widget>[
              // Positioned(
              //   top: screensize / 75,
              //   left: screewidth / 75,
              //   child: CircleAvatar(
              //     backgroundColor: Colors.red,
              //     radius: 20,
              //     child: Text(
              //       yearformatted,
              //       style: TextStyle(
              //           color: Colors.black, fontWeight: FontWeight.bold),
              //     ),
              //   ),
              // ),
              // Positioned(
              //   right: screensize / 75,
              //   top: screewidth / 75,
              //   child: CircleAvatar(
              //     backgroundColor: Colors.transparent,
              //     radius: 20,
              //     child: Text(
              //       h_date.hYear.toString(),
              //       style: TextStyle(
              //           color: Colors.black, fontWeight: FontWeight.bold),
              //     ),
              //   ),
              // ),
              // Positioned(
              //   top: 0,
              //   bottom: 0,
              //   right: screensize / 50,
              //   left: 0,
              //   child: VerticalDivider(
              //     thickness: 2,
              //   ),
              // ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    //                 child: Container(
                    // height: screensize / 2,
                    // width: screensize / 5,
                    // child:
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey[400])),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 20.h,
                          ),
                          Text(
                            '$monthformatted',
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.w400),
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Text(
                            dayformatted,
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ),
                  ),
                  // Container(
                  //   child:

                  Expanded(
                    child: Container(
                      color: Colors.green[200],
                      // decoration: BoxDecoration(
                      //     gradient: LinearGradient(colors: [
                      //   Color.fromRGBO(76, 179, 74, 0.7),
                      //   Colors.green
                      // ])),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 20.h,
                          ),
                          Text(
                            h_date.toFormat(' MMMM'),
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.w400),
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Text(
                            h_date.toFormat('dd'),
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
