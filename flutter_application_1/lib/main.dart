import 'package:flutter/material.dart';
import 'login_page.dart';

void main() {
  runApp(BelaNegaraApp());
}

class BelaNegaraApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Aplikasi Bela Negara',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: LoginPage(),
    );
  }
}
