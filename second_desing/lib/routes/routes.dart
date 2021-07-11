import 'package:flutter/material.dart';
import 'package:second_desing/pages/home_page.dart';

Map<String, WidgetBuilder> getAppliactionRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => HomePage(),
  };
}
