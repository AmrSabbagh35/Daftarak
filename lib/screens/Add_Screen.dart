import 'package:flutter/material.dart';

class Add_Screen extends StatefulWidget {
  @override
  _Add_ScreenState createState() => _Add_ScreenState();
}

class _Add_ScreenState extends State<Add_Screen> {
  @override
  Widget build(BuildContext context) {
    final screenheight = MediaQuery.of(context).size.height;
    final screenwidth = MediaQuery.of(context).size.width;
    return Container(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
          child: Card(
            color: Colors.indigo[300],
            elevation: 2,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(40),
                    bottomRight: Radius.circular(40))),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Check Your Logs",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.start,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 2,
        ),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Center(
            child: Wrap(
              spacing: 20,
              runSpacing: 20.0,
              children: <Widget>[
                SizedBox(
                  width: 140.0,
                  height: 140.0,
                  child: Card(
                    color: Colors.cyan[100],
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: InkWell(
                      splashColor: Colors.cyan[300],
                      onTap: () => print('object'),
                      child: Center(
                          child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: <Widget>[
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              "Daily",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                          ],
                        ),
                      )),
                    ),
                  ),
                ),
                SizedBox(
                  width: 140.0,
                  height: 140.0,
                  child: Card(
                    color: Colors.yellow[200],
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: InkWell(
                      splashColor: Colors.yellow,
                      onTap: () => print('object'),
                      child: Center(
                          child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: <Widget>[
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              "Monthly",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                          ],
                        ),
                      )),
                    ),
                  ),
                ),
                SizedBox(
                  width: 140.0,
                  height: 140.0,
                  child: Card(
                    color: Colors.green[300],
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: InkWell(
                      splashColor: Colors.green[400],
                      onTap: () => print('object'),
                      child: Center(
                          child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: <Widget>[
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              "Yearly",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                          ],
                        ),
                      )),
                    ),
                  ),
                ),
                SizedBox(
                  width: 140.0,
                  height: 140.0,
                  child: Card(
                    color: Colors.blueGrey[200],
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: InkWell(
                      splashColor: Colors.blueGrey,
                      onTap: () => print('object'),
                      child: Center(
                          child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: <Widget>[
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              "All",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                          ],
                        ),
                      )),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Divider(
          thickness: 2,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
          child: Card(
            color: Colors.red[300],
            elevation: 2,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(40),
                    bottomRight: Radius.circular(40))),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Check Your Debts",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.start,
              ),
            ),
          ),
        ),
        // SizedBox(
        //   height: 10,
        // ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 140,
              margin: EdgeInsets.all(10),
              width: screenwidth / 3,
              child: Card(
                color: Colors.red[200],
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                elevation: 5,
              ),
            ),
            Container(
              height: 140,
              margin: EdgeInsets.all(10),
              width: screenwidth / 3,
              child: Card(
                color: Colors.red[200],
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                elevation: 5,
              ),
            ),
          ],
        )
      ],
    ));
  }
}
