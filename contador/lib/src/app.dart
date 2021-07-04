import 'package:contador/src/pages/contador_pages.dart';
import 'package:flutter/material.dart';

//import 'package:contador/src/pages/home_page.dart';

class Myapp extends StatelessWidget {
  @override
  Widget build(context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Center(
        // child: HomePage(),
        child: ContadorPages(),
      ),
    );
  }
}
