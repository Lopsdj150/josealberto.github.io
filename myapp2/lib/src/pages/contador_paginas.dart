import 'package:flutter/material.dart';

class ContadorPaginas extends StatefulWidget {
  @override
  createState() => _ContadorPaginasEstado();
}

class _ContadorPaginasEstado extends State<ContadorPaginas> {
  int _contador = 0;
  final _estiloTexto = new TextStyle(fontSize: 20);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text('Hola mundo'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Hola le has dado muchos clicks',
              style: _estiloTexto,
            ),
            Text(
              '$_contador',
              style: _estiloTexto,
            ),
          ],
        ),
      ),
      floatingActionButton: _crearBotones(),
    );
  }

  Widget _crearBotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(
          width: 30,
        ),
        //Boton para restar
        FloatingActionButton(
            child: Icon(
              Icons.exposure_minus_1,
              size: 35.0,
            ),
            onPressed: _sustraer),
        SizedBox(
          width: 15,
        ),
        //Boton para resetear contador
        FloatingActionButton(
            child: Icon(
              Icons.exposure_zero,
              size: 35.0,
            ),
            onPressed: _resetear),
        SizedBox(
          width: 15,
        ),
        //Boton para sumar
        FloatingActionButton(
            child: Icon(
              Icons.exposure_plus_1,
              size: 35.0,
            ),
            onPressed: _agregar),
        SizedBox(
          width: 15.0,
        )
      ],
    );
  }

  void _agregar() {
    setState(() {
      _contador++;
    });
  }

  void _sustraer() {
    setState(() {
      _contador--;
    });
  }

  void _resetear() {
    setState(() {
      _contador = 0;
    });
  }
}
