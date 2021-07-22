import 'package:flutter/material.dart';
import 'package:invtario_cnbbbj/pages/AreaInventario.dart';
import 'package:invtario_cnbbbj/pages/Login.dart';
import 'package:invtario_cnbbbj/pages/Logo.dart';

Map<String, WidgetBuilder> getAppliactionRoutes() {
  return <String, WidgetBuilder>{
    'logo': (BuildContext context) => LogoPage(),
    'login': (BuildContext context) => LoginPage(),
    'eleccion': (BuildContext context) => AreaInventario(),
  };
}
