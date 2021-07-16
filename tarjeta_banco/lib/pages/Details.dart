import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:tarjeta_banco/widgets/ButtonNavigatorBarCustom.dart';
import 'package:tarjeta_banco/widgets/HeaderHome.dart';
import 'package:tarjeta_banco/widgets/MiniTarjeta.dart';
import 'package:tarjeta_banco/widgets/TarjetaBlanca.dart';

class DetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.menu,
          color: Colors.white,
        ),
        backgroundColor: Color(0xff004481),
        title: Text(
          'Hola,Mauricio',
        ),
        centerTitle: true,
        actions: [
          new Padding(
            padding: const EdgeInsets.all(8.0),
            child: new Material(
              shape: new CircleBorder(),
              child: Image.asset(
                'assets/avatar.jpg',
                scale: 15,
              ),
            ),
          ),
          SizedBox(
            width: 35,
          )
        ],
      ),
      backgroundColor: Color(0xffDCE9EF),
      body: ListView(
        padding: EdgeInsets.only(top: 0),
        physics: BouncingScrollPhysics(),
        children: [
          Stack(
            children: [
              HeaderHome(color: Color(0xff004481)),
              _TarjetaBlancaHeader()
            ],
          ),
          SizedBox(
            height: 20,
          ),
          _ListViewHorizontalIconos(),
          SizedBox(
            height: 15,
          ),
          _TusTarjetas(),
        ],
      ),
      bottomNavigationBar: ButtonNavigatorBarCustom(),
    );
  }
}

class _TarjetaBlancaHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
        child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        height: 220,
        width: MediaQuery.of(context).size.width * 0.95,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Container(
          padding: EdgeInsets.all(25),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Tus cuentas',
                    style: TextStyle(
                        fontSize: 17,
                        color: Color(0xff004481),
                        fontWeight: FontWeight.w500),
                  ),
                  Icon(
                    Icons.more_horiz,
                    size: 30,
                    color: Color(0xff004481),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              _CuentaHeader(
                  texto: '001ah7297',
                  subtexto: '*37265',
                  monto: '20,000',
                  color: Color(0xff004481)),
              Divider(),
              _CuentaHeader(
                  texto: '001ah7297',
                  subtexto: '*37264',
                  monto: '158,000',
                  color: Color(0xff004481)),
            ],
          ),
        ),
      ),
    ));
  }
}

class _CuentaHeader extends StatelessWidget {
  final String texto;
  final String subtexto;
  final String monto;
  final Color color;
  _CuentaHeader({this.texto, this.subtexto, this.monto, this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  texto,
                  style: TextStyle(color: Color(0xff004481), fontSize: 16),
                ),
                Text(
                  subtexto,
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      monto,
                      style: TextStyle(color: Color(0xff004481), fontSize: 15),
                    ),
                  ],
                ),
                Row(children: [
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 14,
                  )
                ])
              ],
            )
          ])
        ],
      ),
    );
  }
}

class _ListViewHorizontalIconos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 18),
      height: 120,
      width: double.infinity,
      color: Colors.white,
      child: ListView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        children: [
          _IconosDelListView(
              texto: 'Oportunidades',
              icono: Icons.add,
              color: Color(0xfff7893a)),
          _IconosDelListView(
              texto: 'Tranferir',
              icono: Icons.swap_horiz,
              color: Color(0xff4cabce)),
          _IconosDelListView(
              texto: 'Retiro sin tarjeta',
              icono: Icons.monetization_on_outlined,
              color: Color(0xff49d17c)),
          _IconosDelListView(
              texto: 'Pagar Servicio',
              icono: Icons.settings,
              color: Color(0xff735fda)),
        ],
      ),
    );
  }
}

class _IconosDelListView extends StatelessWidget {
  final String texto;
  final IconData icono;
  final Color color;

  _IconosDelListView({this.texto, this.icono, this.color});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: color,
          ),
          child: Icon(icono, size: 30, color: Colors.white),
        ),
        SizedBox(height: 7),
        Text(texto, style: TextStyle(fontSize: 13)),
      ],
    );
  }
}

class _TusTarjetas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: double.infinity,
      color: Colors.white,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 20, bottom: 10),
                child: Text(
                  'Tus tarjetas',
                  style: TextStyle(
                      color: Color(0xff004481), fontWeight: FontWeight.bold),
                ),
              ),
              MiniTarjeta(
                color: Color(0xff004481),
                numero: '*623979',
                logo: 'assets/logo_bbva.jpg',
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.credit_card, color: Color(0xff004481)),
                  Text(
                    'Tarjeta digital',
                    style: TextStyle(color: Color(0xff004481), fontSize: 14),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    'Desactivar',
                    style: TextStyle(color: Color(0xff004481), fontSize: 14),
                  ),
                  Icon(
                    Icons.toggle_off,
                    color: Colors.grey,
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            width: 55,
          ),
          TarjetaBlanca(),
        ],
      ),
    );
  }
}
