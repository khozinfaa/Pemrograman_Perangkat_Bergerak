import 'package:flutter/material.dart';
import 'package:flutterproject/minggu4/p1/main_screen.dart';
import 'package:flutterproject/minggu4/p2/percobaan2.dart';
import 'package:flutterproject/minggu4/t/tugas.dart';
// import 'package:flutterproject/minggu3/p2/menu1.dart';

class Menu4 extends StatelessWidget {
  const Menu4({super.key});

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
                    MaterialPageRoute(builder: (context) => const MainScreen()),
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
                    MaterialPageRoute(builder: (context) => Percobaan2()), //const baru dihapus
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
                    MaterialPageRoute(builder: (context) => Tugas()),
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
