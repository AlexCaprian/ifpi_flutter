import 'package:ex001/models/itemmodels.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  final List<CheckBoxModel> itens = [
    CheckBoxModel(texto: 'Alex'),
    CheckBoxModel(texto: 'Rebeca'),
    CheckBoxModel(texto: 'Max'),
    CheckBoxModel(texto: 'Áurea'),
    CheckBoxModel(texto: 'Jonas'),
    CheckBoxModel(texto: 'Júnior'),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tarefa de PPDM',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: ListView.builder(
          itemCount: itens.length,
          itemBuilder: (_, int index) {
            return CheckBoxWidget(item: itens[index]);
          },
        ),
        floatingActionButton: FloatingActionButton(
            child: Icon(Icons.apps), onPressed: listarApenasMarcados),
      ),
    );
  }

  void listarApenasMarcados() {
    List<CheckBoxModel> itensMarcados =
        List.from(itens.where((item) => item.checked));
    itensMarcados.forEach((item) {
      print(item.texto);
    });
  }
}
