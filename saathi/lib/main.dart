import 'package:flutter/material.dart';
import 'package:saathi/sign/logsign.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Saathi',
      debugShowCheckedModeBanner: false,
      home: SignIn(),
    );
  }
}
