import 'package:flutter/material.dart';

class ButtonNavigatorBarCustom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20), topRight: Radius.circular(20)),
        boxShadow: [BoxShadow(blurRadius: 8, color: Colors.grey)],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
              onPressed: null,
              icon: Transform.rotate(
                angle: -190,
                child: Icon(Icons.label_important_outline,
                    size: 33, color: Color(0xff004481)),
              )),
          IconButton(
            onPressed: null,
            icon: Icon(Icons.favorite, size: 33, color: Color(0xff004481)),
          ),
          IconButton(
            onPressed: null,
            icon: Icon(Icons.add_circle, size: 33, color: Color(0xff004481)),
          ),
          IconButton(
            onPressed: null,
            icon: Icon(Icons.mail_outline, size: 33, color: Color(0xff004481)),
          ),
        ],
      ),
    );
  }
}
