import 'package:flutter/material.dart';
import 'package:primerapp/pages/home_pages.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PrimerWidget',
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
