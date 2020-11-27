import 'package:bmi_app/my_home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(primaryColor: Color(0xff0a0e21),
      scaffoldBackgroundColor: Color(0xff0a0e21)),
      home: MyHomePage(),
    );
  }
}

