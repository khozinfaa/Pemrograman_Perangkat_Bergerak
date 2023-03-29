import 'package:flutter/material.dart';

class Percobaan4 extends StatelessWidget {
  const Percobaan4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Percobaan 4'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image.asset('assets/images/submarine.jpg'),
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
            Container(
              margin: const EdgeInsets.symmetric(vertical: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: const <Widget> [
                      Icon(Icons.calendar_today),
                      Text('open Everyday'),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16.0),
              child: const Text(
                "Museum inside a decommissioned Russian War submarine With tours & an adjacent park with cafes. Clean and well maintained car park cost 10k, entrance fee 15k/person. you can see KRI Pasopati there, it is a russian whiesky class. You can also watch the Indonesian NAvy at the building beside the submarine.",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            Container(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget> [
                  Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Image.asset('assets/images/mon1.jpg'),
                  ),
                  Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Image.asset('assets/images/mon2.jpg'),
                  ),
                  Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Image.asset('assets/images/mon4.jpg'),
                  ),
                  Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Image.asset('assets/images/mon5.jpg'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
