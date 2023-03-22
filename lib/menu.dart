import 'package:flutter/material.dart';
import 'package:flutterproject/percobaan1.dart';
import 'package:flutterproject/percobaan2.dart';
import 'package:flutterproject/percobaan3.dart';
import 'package:flutterproject/percobaan4.dart';
import 'package:flutterproject/percobaan5.dart';
import 'package:flutterproject/latihan.dart';
import 'package:flutterproject/tugas.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

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
                    MaterialPageRoute(builder: (context) => const Percobaan1()),
                  );
                },
                child: const Text('Percobaan 1'),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 20.0, top: 20.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Percobaan2()),
                  );
                },
                child: const Text('Percobaan 2'),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 20.0, top: 20.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Percobaan3()),
                  );
                },
                child: const Text('Percobaan 3'),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 20.0, top: 20.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Percobaan4()),
                  );
                },
                child: const Text('Percobaan 4'),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 20.0, top: 20.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Percobaan5()),
                  );
                },
                child: const Text('Percobaan 5'),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 20.0, top: 20.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Latihan()),
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
                    MaterialPageRoute(builder: (context) => const Tugas()),
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
