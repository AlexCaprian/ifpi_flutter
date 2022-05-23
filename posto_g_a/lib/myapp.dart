import 'package:flutter/material.dart';
import 'package:posto_g_a/home.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'GasAlcool',
      home: Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}
