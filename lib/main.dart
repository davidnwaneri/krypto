import 'package:flutter/material.dart';
import 'main_krypto_screen.dart';

void main() {
  runApp(MyKryptoApp());
}

class MyKryptoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Krypto',
      home: MainKryptoScreen(),
      theme: ThemeData.dark().copyWith(
        appBarTheme: AppBarTheme(
          color: Color(0xFF1b1c22),
        ),
        scaffoldBackgroundColor: Color(0xFF1b1c22),
      ),
    );
  }
}
