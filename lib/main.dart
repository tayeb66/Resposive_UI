import 'package:flex_expanded/Expanded/expanded.dart';
import 'package:flex_expanded/Flexible/flex.dart';
import 'package:flex_expanded/media_query.dart';
import 'package:flutter/material.dart';
void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MediaQueryPage()
    );
  }
}