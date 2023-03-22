import 'package:flutter/material.dart';

class Percobaan1 extends StatelessWidget {
  const Percobaan1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Wisata Tulungagung'),
        ),
        body: SafeArea(
          child: Column(
          children: <Widget> [
            Container(
                margin: const EdgeInsets.only(top: 16.0),
                child: const Text(
                    "Surabaya Submarine Monument",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
            ),
          ],
          ),
        ),
        );
    }
}