import 'package:flutter/material.dart';

class StopwatchLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Expanded(
            flex: 5,
            child: Container(
              alignment: Alignment.center,
              child: Text('0:00:00',
                  style:
                      TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold)),
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      RaisedButton(
                        child: Text("Stop"),
                        color: Colors.deepOrange,
                        padding: EdgeInsets.fromLTRB(40.0, 15.0, 40.0, 15.0),
                        onPressed: () {},
                      ),
                      RaisedButton(
                        child: Text("Start"),
                        color: Colors.teal,
                        padding: EdgeInsets.fromLTRB(40.0, 15.0, 40.0, 15.0),
                        onPressed: () {},
                      ),
                    ],
                  ),
                  Divider(
                    height: 40.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RaisedButton(
                        child: Text("Reset"),
                        color: Colors.cyan,
                        padding: EdgeInsets.fromLTRB(40.0, 15.0, 40.0, 15.0),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }
}
