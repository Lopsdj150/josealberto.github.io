import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  bool _ispassword = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: GestureDetector(
            onTap: () {
              FocusScope.of(context).requestFocus(new FocusNode());
            },
            child: Container(
              margin: EdgeInsets.only(top: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  _AppBarLogin(),
                  SizedBox(
                    height: 40,
                  ),
                  //_Perfiles(),

                  Container(
                    width: 400,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Color(0xFFC8C2B6),
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        _TextoCustom(
                            tituloText: 'Bienvenido',
                            sizeTam: 28,
                            colorCod: new Color(0xFF245c4c),
                            boldFond: FontWeight.bold),
                        SizedBox(
                          height: 10,
                        ),
                        _TextoCustom(
                          tituloText: '¿Que tal tu dia hoy',
                          sizeTam: 16,
                          colorCod: Color(0xff3a3a3a),
                          boldFond: FontWeight.w100,
                        ),
                        SizedBox(
                          height: 35,
                        ),
                        _TextFieldDatos(
                            'Usuario',
                            _ispassword,
                            'Introduce tu usuario',
                            Icons.person_outline,
                            Icons.accessibility_rounded),
                        SizedBox(
                          height: 35,
                        ),
                        _TextFieldDatos(
                          'Contraseña',
                          _ispassword,
                          'Introduce tu constraseña',
                          Icons.lock_open,
                          _ispassword
                              ? Icons.screen_lock_landscape
                              : Icons.visibility_off,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        _OlvideContrasena()
                      ],
                    ),
                  ),

                  _ButtonLogin(),

                  //_LineaBottom(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _TextoCustom extends StatelessWidget {
  final String tituloText;
  final double sizeTam;
  final Color colorCod;
  final FontWeight boldFond;

  const _TextoCustom(
      {this.tituloText = '',
      this.sizeTam = 0.0,
      this.colorCod = Colors.black,
      this.boldFond = FontWeight.normal});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 30,
          ),
          Text(tituloText,
              style: TextStyle(
                  fontSize: sizeTam,
                  color: colorCod,
                  fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}

class _OlvideContrasena extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: TextButton(
          onPressed: () => Navigator.pushNamed(context, 'details'),
          child: Text(
            'Olvide mi contraseña',
            style: TextStyle(
                fontSize: 15,
                color: Color(0xff3a3a3a),
                fontWeight: FontWeight.bold),
          )),
    );
  }
}

class _TextFieldDatos extends StatefulWidget {
  String texto;
  get getTexto => this.texto;

  set setTexto(final texto) => this.texto = texto;
  bool ocultar;
  bool get getOcultar => this.ocultar;

  set setOcultar(bool ocultar) => this.ocultar = ocultar;
  String subTexto;
  String get getSubTexto => this.subTexto;

  set setSubTexto(String subTexto) => this.subTexto = subTexto;
  IconData iconoSecon;
  IconData get getIconoSecon => this.iconoSecon;

  set setIconoSecon(IconData iconoSecon) => this.iconoSecon = iconoSecon;
  IconData iconoPrima;
  IconData get getIconoPrima => this.iconoPrima;

  set setIconoPrima(IconData iconoPrima) => this.iconoPrima = iconoPrima;

  _TextFieldDatos(String texto, bool ocultar, String subTexto,
      IconData iconSecon, IconData iconPrima) {
    this.iconoPrima = iconPrima;
    this.texto = texto;
    this.ocultar = ocultar;
    this.subTexto = subTexto;
    this.iconoSecon = iconSecon;
  }

  @override
  __TextFieldDatosState createState() => __TextFieldDatosState();
}

class __TextFieldDatosState extends State<_TextFieldDatos> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: TextField(
        obscureText: widget.getOcultar,
        style: TextStyle(color: Color(0xff245c4c), fontSize: 20),
        decoration: InputDecoration(
          icon: Icon(
            widget.getIconoPrima,
            color: Color(0xff245c4c),
          ),
          suffixIcon: IconButton(
            icon: Icon(widget.getIconoSecon),
            color: Color(0xff245c4c),
            onPressed: () {
              setState(() {
                widget.setOcultar = !widget.getOcultar;
              });
            },
          ),
          labelText: widget.getTexto,
          hintText: widget.getSubTexto,
          border: OutlineInputBorder(
              borderSide: BorderSide(
                  color: new Color.fromRGBO(36, 92, 76, 1), width: 4.0)),
          labelStyle: TextStyle(
              color: Color(0xff245c4c),
              fontSize: 16,
              fontWeight: FontWeight.bold),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Color(0xff245c4c), width: 2.0),
          ),
        ),
      ),
    );
  }
}

class _AppBarLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(30),
      child: new Image.asset(
        'assets/images/logo1.png',
      ),
    );
  }
}

class _ButtonLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(30),
      child: Container(
        height: 50.0,
        child: RaisedButton(
          onPressed: () => Navigator.pushNamed(context, 'eleccion'),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
          padding: EdgeInsets.all(0.0),
          child: Ink(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xff7ca478), Color(0xff449878)],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
                borderRadius: BorderRadius.circular(30.0)),
            child: Container(
              constraints: BoxConstraints(maxWidth: 250.0, minHeight: 50.0),
              alignment: Alignment.center,
              child: Text(
                "Ingresar",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
