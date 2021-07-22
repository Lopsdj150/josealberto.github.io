import 'package:flutter/material.dart';

class LogoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // onHorizontalDragStart: (details) => Navigator.pushNamed(context, 'login'),

      child: Scaffold(
        backgroundColor: new Color.fromRGBO(155, 204, 195, 1),

        // backgroundColor: Colors.green,
        body: Center(
          child: new Image.asset('assets/images/logo1.png',
              width: 350, height: 90),
        ),
      ),
      onLongPress: () {
        Navigator.pushReplacementNamed(context, 'login');
      },
    );
  }
}
