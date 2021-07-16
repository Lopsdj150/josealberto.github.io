import 'package:flutter/material.dart';

class LogoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // onHorizontalDragStart: (details) => Navigator.pushNamed(context, 'login'),
      onTap: () {
        Navigator.pushNamed(context, 'login');
      },
      child: Scaffold(
        backgroundColor: Color(0xff004481),

        // backgroundColor: Colors.green,
        body: Center(
          child:
              new Image.asset('assets/logo_bbva.jpg', width: 300, height: 100),
        ),
      ),
    );
  }
}
