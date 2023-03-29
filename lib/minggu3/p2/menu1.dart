import 'package:flutter/material.dart';
import 'package:flutterproject/minggu3/p2/percobaan1.dart';
import 'package:flutterproject/minggu3/p2/latihann.dart';
import 'package:flutterproject/minggu3/p2/tugass.dart';

class Menu1 extends StatelessWidget {
  const Menu1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menu'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            /*Container(
              margin: const EdgeInsets.only(bottom: 20.0),
              child: const Card(
                color: Colors.blue,
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'Aplikasi Flutter Layout',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
            ),*/
            Container(
              margin: const EdgeInsets.only(bottom: 20.0, top: 20.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Percobaann1()),
                  );
                },
                child: const Text('Tugas'),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 20.0, top: 20.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Latihann()),
                  );
                },
                child: const Text('Latihan'),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 20.0, top: 20.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Tugass()),
                  );
                },
                child: const Text('Tugas'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
