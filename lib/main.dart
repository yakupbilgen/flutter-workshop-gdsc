import 'package:flutter/material.dart';

import 'day_1/day_1.dart';
import 'day_2/day_2.dart';
import 'day_3/day_3.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: "/day3",
    routes: {
      "/day1": (context) => const Day1(),
      "/day2": (context) => const Day2(),
      "/day3": (context) => const Day3(),
    },
  ));
}
