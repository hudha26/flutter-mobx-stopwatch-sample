import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_stopwatch/stores/timer.dart';

final timer = TimerStore();

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
              child: Observer(
                builder: (context) {
                  return Text(timer.timerText,
                      style: TextStyle(
                          fontSize: 40.0, fontWeight: FontWeight.bold));
                },
              ),
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
                      Observer(
                        builder: (context) {
                          return RaisedButton(
                            child: Text("STOP"),
                            color: Colors.deepOrange,
                            padding:
                                EdgeInsets.fromLTRB(40.0, 15.0, 40.0, 15.0),
                            onPressed: timer.isStop ? null : timer.stop,
                          );
                        },
                      ),
                      Observer(
                        builder: (context) {
                          return RaisedButton(
                            child: Text("RESET"),
                            color: Colors.cyan,
                            padding:
                                EdgeInsets.fromLTRB(40.0, 15.0, 40.0, 15.0),
                            onPressed: timer.isReset ? null : timer.reset,
                          );
                        },
                      ),
                    ],
                  ),
                  Divider(
                    height: 40.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Observer(
                        builder: (context) {
                          return RaisedButton(
                            child: Text("START"),
                            color: Colors.teal,
                            padding:
                                EdgeInsets.fromLTRB(60.0, 25.0, 60.0, 25.0),
                            onPressed: timer.isStart ? timer.start : null,
                          );
                        },
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
