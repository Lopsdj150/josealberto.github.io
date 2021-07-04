import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final List<String> nombresBotones = [
    'CALL',
    'ROUTE',
    'SHARE',
  ];
  List<IconData> iconosBotones = [Icons.call, Icons.near_me, Icons.share];
  Map<String, IconData> iconos = {
    'CALL': Icons.call,
    'ROUTE': Icons.near_me,
    'SHARE': Icons.share
  };

  String texto =
      'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
      'Alps. Situated 1,578 meters above sea level, it is one of the '
      'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
      'half-hour walk through pastures and pine forest, leads you to the '
      'lake, which warms to 20 degrees Celsius in the summer. Activities '
      'enjoyed here include rowing, and riding the summer toboggan run.';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            _imagen, _sectionTitle,
            seccionIcons(nombresBotones, iconosBotones, iconos),
            seccionTexto(texto)
            // _seccionBotons()
          ],
        ),
      ),
    );
  }

  var _imagen = Row(
    children: [
      Expanded(
        child: Image.asset(
          'asset/photo_170.jpeg',
          scale: 1.0,
          width: double.infinity,
          height: 240,
          fit: BoxFit.cover,
        ),
      ),
    ],
  );

  var _sectionTitle = Row(
    children: [
      Container(
        padding: EdgeInsets.all(32.0),
        alignment: Alignment.centerLeft,
        child: DefaultTextStyle(
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.start,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Oeschinen Lake Campground',
                  style: TextStyle(color: Colors.black)),
              Text(
                'Kandersteg, Switzerland',
                style: TextStyle(
                  color: Colors.grey[500],
                ),
              ),
            ],
          ),
        ),
      ),
      Container(
        padding: EdgeInsets.all(20),
        child: Row(
          children: [
            Icon(
              Icons.star,
              color: Colors.red,
              size: 30.0,
            ),
            Text(
              '41',
              textScaleFactor: 1.5,
            ),
          ],
        ),
      )
    ],
  );

// var secciones
/*
  var seccionIcons = DefaultTextStyle.merge(
      child: Container(
    padding: EdgeInsets.all(35),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: 
      _nombresBotones.
        [
        Column(
          children: [
            Icon(Icons.call, color: Colors.blue),
            Text('CALL'),
          ],
        ),
      ],
    ),
  ));
  */
//funcion seccionIcons

  Widget seccionIcons(List<String> nombresBotones, List<IconData> iconosBotones,
      Map<String, IconData> iconos) {
    return DefaultTextStyle.merge(
        child: Container(
      padding: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          for (int i = 0; i < nombresBotones.length; i++)
            Column(
              children: [
                Icon(iconosBotones[i], color: Colors.blue),
                Text(nombresBotones[i]),
              ],
            ),
        ],
      ),
    ));
  }

  Widget seccionTexto(String texto) {
    return Container(padding: EdgeInsets.all(15), child: Text(texto));
  }
  // DefaultTextStyle _seccionBotons() {
  //   List<String> nombresBotones = [
  //     'CALL',
  //     'ROUTE',
  //     'SHARE',
  //   ];

  //   List<IconData> iconosBotones = [Icons.call, Icons.near_me, Icons.share];
  //   return DefaultTextStyle.merge(
  //     child: Container(
  //       padding: EdgeInsets.all(30),
  //       child: Row(
  //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  //         children: [
  //           Column(
  //             children: [
  //               Icon(
  //                 Icons.call,
  //                 color: Colors.blue,
  //               ),
  //               Divider(),
  //               Text('Call'),
  //             ],
  //           ),
  //         ],
  //       ),
  //     ),
  //   );
  // }
}
