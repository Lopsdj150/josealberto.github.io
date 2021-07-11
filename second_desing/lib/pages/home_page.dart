import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isChecked = false;

  bool status = false;
  double valorSlider = 3000.0;
  bool _bloquearCheack = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        elevation: 0.0,
        backgroundColor: new Color.fromRGBO(237, 239, 243, 1.0),
        title: Text(
          'Create an order',
          style: TextStyle(color: Colors.black, fontSize: 16),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          color: new Color.fromRGBO(237, 239, 243, 1.0),
          child: Column(
            children: [
              _seccionOrderType(),
              _seccionActivePeriod(),
              _seccionSlider(),
              _seccionUgent(),
              SizedBox(
                width: 90,
                height: 127,
              ),
              _seccionBtnbar(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _seccionOrderType() {
    return Container(
      padding: EdgeInsets.all(15),
      margin: EdgeInsets.all(10),
      child: Column(
        children: [
          Row(
            //titulo order type
            children: [
              SizedBox(
                width: 55,
              ),
              Text(
                'Order type',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 25,
              ),
            ],
          ),
          Container(
            decoration: BoxDecoration(
                color: new Color.fromARGB(255, 255, 255, 255),
                border:
                    Border.all(color: new Color.fromARGB(255, 255, 255, 255)),
                borderRadius: BorderRadius.circular(20)),
            child: Column(
              children: [
                _buttonRadio("Public", Colors.green, ""),
                Divider(),
                _buttonRadio("Private", Colors.black, "")
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _seccionActivePeriod() {
    return Container(
      padding: EdgeInsets.all(15),
      margin: EdgeInsets.all(10),
      child: Column(
        children: [
          Row(
            //titulo order type
            children: [
              SizedBox(
                width: 55,
              ),
              Text(
                'Active period',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 25,
              ),
            ],
          ),
          Container(
            decoration: BoxDecoration(
                color: new Color.fromARGB(255, 255, 255, 255),
                border:
                    Border.all(color: new Color.fromARGB(255, 255, 255, 255)),
                borderRadius: BorderRadius.circular(20)),
            child: Column(
              children: [
                _buttonRadio("3 days", Colors.green, ""),
                Divider(),
                _buttonRadio("5 days", Colors.black, "+2.00"),
                Divider(),
                _buttonRadio("7 days", Colors.black, "+3.00"),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buttonRadio(String palabra, Color color, String precio) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        SizedBox(
          height: 30,
          width: 20,
        ),
        CustomCheckBox(),
        SizedBox(
          width: 15,
        ),
        Expanded(
          child: Text(
            palabra,
            style: TextStyle(
                color: color, fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
        Expanded(child: Text('')),
        Expanded(
          child: Text(
            precio,
            style: TextStyle(),
          ),
        ),
      ],
    );
  }

  Widget _seccionSlider() {
    return Column(
      children: [
        Row(
          children: [
            SizedBox(
              width: 100,
            ),
            Text('Payment amount',
                style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(
              width: 40,
            ),
            Text('2586.00')
          ],
        ),
        Container(
          child: _crearSlider(),
        )
      ],
    );
  }

  Widget _crearSlider() {
    return Container(
      child: Slider(
        //divisions: 20,
        value: valorSlider,
        min: 20.0,
        max: 3000.0,
        onChanged: (_bloquearCheack)
            ? null
            : (valor) {
                setState(() {
                  valorSlider = valor;
                });
              },
      ),
    );
  }

  Widget _seccionUgent() {
    return Column(
      children: [
        Row(
          children: [
            Row(
              children: [
                SizedBox(
                  width: 80,
                ),
                Text('Urgent order',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                SizedBox(
                  width: 50,
                ),
                Text('+5.00'),
                SizedBox(
                  width: 30,
                ),
                Container(
                  child: FlutterSwitch(
                    inactiveColor: Colors.grey,
                    activeColor: Colors.green,
                    width: 45.0,
                    height: 25.0,
                    valueFontSize: 35.0,
                    toggleSize: 35.0,
                    value: status,
                    borderRadius: 10.0,
                    padding: 5.0,
                    showOnOff: false,
                    onToggle: (val) {
                      setState(() {
                        status = val;
                      });
                    },
                  ),
                )
              ],
            )
          ],
        ),
        Text('Highlighted order placed on'),
        Text('Top of the freed for one day'),
      ],
    );
  }

  Widget _seccionBtnbar() {
    return BottomNavigationBar(
      items: [
        new BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Text('Home'),
        ),
        new BottomNavigationBarItem(
            icon: Icon(Icons.person), title: Text('Profile'))
      ],
    );
  }
}

class CustomCheckBox extends StatefulWidget {
  @override
  _CustomCheckBoxState createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return
        //Row(
        //mainAxisSize: MainAxisSize.min,
        //children: <Widget>[
        GestureDetector(
      onTap: () {
        setState(() {
          isChecked = !isChecked;
        });
      },
      child: Container(
        width: 20,
        height: 20,
        decoration: BoxDecoration(
            border: Border.all(
                color: isChecked ? Colors.green : Colors.grey, width: 5),
            borderRadius: BorderRadius.circular(20.0)),
        child: Container(
          width: 20,
          height: 20,
          decoration: BoxDecoration(
              // color: isChecked ? Colors.green : Colors.white,
              //Colors.black : Colors.white,
              borderRadius: BorderRadius.circular(20.0)),
        ),
      ),
    );
    /*       SizedBox(
          width: 10,
        ),
        Text("M")
      ],
    );*/
  }
}
