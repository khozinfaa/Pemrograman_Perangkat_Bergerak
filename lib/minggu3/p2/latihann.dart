import 'package:flutter/material.dart';

class Latihann extends StatelessWidget {
  const Latihann({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Latihan'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text('--------'),
          ],
        ),
      ),
    );
  }
}
