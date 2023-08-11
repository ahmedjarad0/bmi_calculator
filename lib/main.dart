import 'package:bmi_calculator/constant.dart';
import 'package:bmi_calculator/screen/bmi_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          scaffoldBackgroundColor: kBackground,

          appBarTheme: const AppBarTheme(
              backgroundColor: kBackground,
              elevation: 0,
              centerTitle: true,
              titleTextStyle:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.white,fontSize: 18))),
      debugShowCheckedModeBanner: false,
      home: const BmiScreen(),
    );
  }
}
