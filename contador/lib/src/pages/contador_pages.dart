import 'package:flutter/material.dart';

class ContadorPages extends StatefulWidget {
  @override
  createState() => _ContadorPagesState();
}

class _ContadorPagesState extends State<ContadorPages> {
  final _estiloTexto = new TextStyle(fontSize: 20);
  int _conteo = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal[400],
        title: Text('Stateful'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            'Numero de clicks: ',
            style: _estiloTexto,
          ),
          Text(
            '$_conteo',
            style: _estiloTexto,
          ),
        ]),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Container(height: 50.0),
        color: Colors.teal[700],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: _crearBotones(),
    );
  }

  Widget _crearBotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(
          width: 30.0,
        ),

        //Boton que reinicia el contador
        FloatingActionButton(
            child: Icon(
              Icons.exposure_zero,
              size: 35.0,
            ),
            onPressed: _reset),
        Expanded(
          child: SizedBox(width: 5.0),
        ),

        //Boton que resta menos uno
        FloatingActionButton(
            child: Icon(
              Icons.exposure_minus_1,
              size: 35.0,
            ),
            onPressed: _sustraer),
        SizedBox(
          width: 8.0,
        ),

        //Boton que suma mas uno
        FloatingActionButton(
            child: Icon(
              Icons.exposure_plus_1,
              size: 35.0,
            ),
            onPressed: _agregar),
        SizedBox(
          width: 8.0,
        ),
      ],
    );
  }

  void _agregar() {
    setState(() {
      _conteo++;
    });
  }

  void _sustraer() {
    setState(() {
      _conteo--;
    });
  }

  void _reset() {
    setState(() {
      _conteo = 0;
    });
  }
}
