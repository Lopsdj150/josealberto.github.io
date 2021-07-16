import 'package:flutter/material.dart';
import 'package:tarjeta_banco/routes/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App Banco',
      initialRoute: 'details',
      routes: getAppliactionRoutes(),
    );
  }
}
