import 'package:flutter/material.dart';
import 'package:mobx_stopwatch/stopwatchLayout.dart';

void main() {
  runApp(MaterialApp(
    title: 'Flutter stopwatch with Mobx',
    initialRoute: '/',
    debugShowCheckedModeBanner: false,
    routes: {
      '/': (context) => StopwatchLayout(),
    },
  ));
}


