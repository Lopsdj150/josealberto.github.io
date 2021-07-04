import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final opciones = ['uno', 'dos', 'tres', 'cuatro', 'cinco'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes Temp'),
      ),
      body: ListView(
        //children: _crearIteams(),
        children: _crearItemsCorta(),
      ),
    );
  }

/*
  List<Widget> _crearIteams() {
    // ignore: deprecated_member_use
    List<Widget> lista = <Widget>[];
    for (String opt in opciones) {
      final tempWidget = ListTile(
        title: Text(opt),
      );
      lista
        ..add(tempWidget)
        ..add(
            Divider()); //agremos el elemento del widget al array list, ademas (.. el operador de cascada) agrega otro elemento del misma lista
    }
    return lista;
  }
*/
  List<Widget> _crearItemsCorta() {
    return opciones.map((item) {
      return Column(
        children: [
          ListTile(
            title: Text(item + '-->!--'),
            subtitle: Text('Cualquier cosa'),
            leading: Icon(Icons.account_balance),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {},
          ),
          Divider(),
        ],
      );
    }).toList();
  }
}
