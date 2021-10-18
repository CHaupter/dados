// ignore_for_file: prefer_const_constructors

import 'dart:math';

import 'package:flutter/material.dart';

class Dados extends StatefulWidget {
  Dados({Key? key}) : super(key: key);

  @override
  _DadosState createState() => _DadosState();
}

class _DadosState extends State<Dados> {
  int _rng = 0;
  String asset = "asset/dado1.png";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "DADOS",
          textAlign: TextAlign.center,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image(image: AssetImage(asset)),
          Boton1(),
        ],
      ),
    );
  }

  Widget Boton1() {
    return ElevatedButton(onPressed: resultadoDados(), child: Text("ROLL"));
  }

  resultadoDados() => setState(() {
        _rng = new Random().nextInt(6);
        asset = "assets/dado" + _rng.toString() + ".png";
      });
}
