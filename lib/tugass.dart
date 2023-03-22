import 'package:flutter/material.dart';

class Tugass extends StatelessWidget {
  const Tugass({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Percobaan 1'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text('Percobaan 1'),
          ],
        ),
      ),
    );
  }
}
