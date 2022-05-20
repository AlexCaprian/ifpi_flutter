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

  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tarefa de PPDM',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('CheckList'),
        ),
        // ignore: avoid_unnecessary_containers
        body: Container(
          color: Colors.grey,
          child: ListView.builder(
            itemCount: itens.length,
            itemBuilder: (_, int index) {
              return CheckBoxWidget(item: itens[index]);
            },
          ),
        ),
      ),
    );
  }
}
