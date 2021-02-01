import 'package:flutter/material.dart';

class MainKryptoScreen extends StatefulWidget {
  @override
  _MainKryptoScreenState createState() => _MainKryptoScreenState();
}

class _MainKryptoScreenState extends State<MainKryptoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Krypto'),
        ),
      ),
      body: Column(
        children: <Widget>[
          CircleAvatar(
            radius: 50.0,
            backgroundColor: Colors.brown,
          ),
        ]
      ),
    );
  }
}