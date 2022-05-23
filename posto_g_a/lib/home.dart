// ignore_for_file: avoid_print, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final TextEditingController _textEditingControllerGasolina =
      TextEditingController();
  final TextEditingController _textEditingControllerAlcool =
      TextEditingController();

  var resultado = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gasolina x Alcool'),
      ),
      body: Container(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(32.0),
          child: Column(children: [
            const Text('Gasolina x Álcool'),
            Image.asset('assets/img/bomba-gas.jpg'),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text('Valor gasolina'),
                ),
                controller: _textEditingControllerGasolina,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text('Valor alcool'),
                ),
                controller: _textEditingControllerAlcool,
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  print('Valor: ' + _textEditingControllerGasolina.text);
                  print('Valor: ' + _textEditingControllerAlcool.text);

                  setState(() {
                    resultado =
                        double.parse(_textEditingControllerAlcool.text) /
                            double.parse(_textEditingControllerGasolina.text) *
                            100;
                    },
                  );
                },
                child: const Text('Calcular'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Resultado ' + resultado.toString()),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(8.0)
                  ),
                  padding: const EdgeInsets.all(8.0)
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
