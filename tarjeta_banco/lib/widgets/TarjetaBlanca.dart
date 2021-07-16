import 'package:flutter/material.dart';

class TarjetaBlanca extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -278.03,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 1.0),
        height: 10,
        width: 190,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [BoxShadow(blurRadius: 6, color: Colors.black)]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Image.asset(
                'assets/logo_bbva.jpg',
                height: 40,
                width: 40,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 12.0),
              child: Image.asset(
                'assets/chip.png',
                height: 40,
                width: 40,
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: EdgeInsets.only(left: 18.0, right: 8.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '*623979',
                      style: TextStyle(color: Color(0xff004481), fontSize: 16),
                    ),
                    Image.asset(
                      'assets/visa.png',
                      height: 20,
                      width: 20,
                    ),
                  ]),
            )
          ],
        ),
      ),
    );
  }
}
