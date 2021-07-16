import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(top: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _AppBarLogin(),
                SizedBox(
                  height: 40,
                ),
                _Perfiles(),
                SizedBox(
                  height: 30,
                ),
                _TextoCustom(
                    tituloText: 'Hola, Mauricio',
                    sizeTam: 28,
                    colorCod: Color(0xff004481),
                    boldFond: FontWeight.bold),
                SizedBox(
                  height: 30,
                ),
                _TextoCustom(
                  tituloText: '¿Que tal tu dia hoy',
                  sizeTam: 16,
                  colorCod: Color(0xff9CAFC1),
                ),
                SizedBox(
                  height: 35,
                ),
                _TextFieldPassword(),
                SizedBox(
                  height: 10,
                ),
                _OlvideContrasena(),
                SizedBox(
                  height: 40,
                ),
                _RowCustom(
                    texto: 'Token movil', icono: Icons.verified_user_outlined),
                SizedBox(
                  height: 30,
                ),
                _Operacion(),
                SizedBox(
                  height: 30,
                ),
                _RowCustom(
                    texto: 'Linea BBVA', icono: Icons.phone_in_talk_outlined),
                SizedBox(
                  height: 36,
                ),
                //_LineaBottom(),
              ],
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
      {this.tituloText, this.sizeTam, this.colorCod, this.boldFond});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          SizedBox(
            width: 30,
          ),
          Column(
            children: [
              Text(tituloText,
                  style: TextStyle(
                      fontSize: sizeTam,
                      color: colorCod,
                      fontWeight: FontWeight.bold)),
            ],
          )
        ],
      ),
    );
  }
}

class _Operacion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Icon(
            Icons.qr_code_scanner_outlined,
            color: Color(0xff004481),
            size: 40,
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            children: [
              Text('Operacion',
                  style: TextStyle(
                      fontSize: 16,
                      color: Color(0xff004481),
                      fontWeight: FontWeight.w500)),
              Text('QR + CoDi',
                  style: TextStyle(
                      fontSize: 16,
                      color: Color(0xff004481),
                      fontWeight: FontWeight.w500)),
            ],
          )
        ],
      ),
    );
  }
}

class _RowCustom extends StatelessWidget {
  final IconData icono;
  final String texto;
  const _RowCustom({this.icono, this.texto});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Icon(
            icono,
            color: Color(0xff004481),
            size: 40,
          ),
          SizedBox(
            width: 40,
          ),
          Text(
            texto,
            style: TextStyle(
                fontSize: 16,
                color: Color(0xff004481),
                fontWeight: FontWeight.w500),
          )
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
                color: Color(0xff004481),
                fontWeight: FontWeight.bold),
          )),
    );
  }
}

class _TextFieldPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: TextField(
        obscureText: true,
        style: TextStyle(color: Color(0xff004481), fontSize: 18),
        decoration: InputDecoration(
            labelText: 'Contraseña',
            labelStyle: TextStyle(color: Color(0xff004481), fontSize: 15),
            focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Color(0xff004481))),
            suffixIcon:
                Icon(Icons.visibility_off_outlined, color: Color(0xff004481))),
      ),
    );
  }
}

class _Perfiles extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('assets/avatar.jpg'),
            maxRadius: 50,
          ),
          SizedBox(
            width: 15,
          ),
          CircleAvatar(
            backgroundColor: Color(0xff004481),
            maxRadius: 18,
            child: Icon(Icons.swap_horiz, color: Colors.white),
          )
        ],
      ),
    );
  }
}

class _AppBarLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          IconButton(
              onPressed: null,
              icon: Icon(
                Icons.sort,
                size: 35,
                color: Color(0xff004481),
              )),
          SizedBox(
            width: 65,
          ),
          new Image.asset('assets/logo_bbva2.jpg', width: 100, height: 50),
        ],
      ),
    );
  }
}
