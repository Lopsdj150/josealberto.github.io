import 'package:flutter/material.dart';
import 'package:myapp2/src/pages/contador_paginas.dart';

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Center(
        child: ContadorPaginas(),
      ),
    );
  }
}
