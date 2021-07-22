import 'package:flutter/material.dart';

class AreaInventario extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leadingWidth: 200,
          leading: _AppBar(),
          title: Text(
            'Inventario',
            style: TextStyle(fontSize: 25),
          ),
          centerTitle: true,
          backgroundColor: Color(0xff245c4c),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              _ListOpcion(
                textoOpc: 'Oficina',
                rutaImagen: 'assets/images/mesa-de-oficina.png',
              ),
              SizedBox(
                width: 40,
                height: 40,
              ),
              _ListOpcion(
                textoOpc: 'Papeleria',
                rutaImagen: 'assets/images/papelera.png',
              ),
            ],
          ),
        ));
  }
}

class _AppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Padding(
      padding: const EdgeInsets.all(5.0),
      child: new Material(
        shape: new CircleBorder(),
        child: Image.asset(
          'assets/images/avatar_cnbbbj.jpeg',
          scale: 0.1,
        ),
      ),
    );
  }
}

class _ListOpcion extends StatelessWidget {
  final String textoOpc;
  final String rutaImagen;

  const _ListOpcion({this.textoOpc, this.rutaImagen});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(30.0),
                bottomRight: Radius.circular(30.0)),
            color: Colors.green,
          ),
          height: 240,
          width: 250,
          child: Padding(
            padding: EdgeInsets.all(30),
            child: Column(
              children: [
                Text(
                  textoOpc,
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
                SizedBox(
                  height: 20,
                ),
                new Image.asset(
                  rutaImagen,
                  width: 100,
                  height: 100,
                ),
              ],
            ),
          ),
          margin: EdgeInsets.all(5),
        ),
      ],
    );
  }
}
