import 'package:flutter/material.dart';

import 'day_1/day_1.dart';
import 'day_2/day_2.dart';
import 'day_3/day_3.dart';
import 'day_4/day_4.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: "/day4",
    routes: {
      "/day1": (context) => const Day1(),
      "/day2": (context) => const Day2(),
      "/day3": (context) => const Day3(),
      "/day4": (context) => Day4(),
    },
  ));
}
