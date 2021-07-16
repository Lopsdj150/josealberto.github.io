import 'package:flutter/material.dart';
import 'package:tarjeta_banco/pages/Details.dart';
import 'package:tarjeta_banco/pages/Login.dart';
import 'package:tarjeta_banco/pages/Logo.dart';

Map<String, WidgetBuilder> getAppliactionRoutes() {
  return <String, WidgetBuilder>{
    'logo': (BuildContext context) => LogoPage(),
    'login': (BuildContext context) => LoginPage(),
    'details': (BuildContext context) => DetailsPage(),
  };
}
