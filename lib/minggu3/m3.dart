import 'package:flutter/material.dart';
import 'package:flutterproject/minggu3/p1/menu.dart';
import 'package:flutterproject/minggu3/p2/menu1.dart';

class M3 extends StatelessWidget {
  const M3({super.key});

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
                    MaterialPageRoute(builder: (context) => const Menu()),
                  );
                },
                child: const Text('Part 1'),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 20.0, top: 20.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Menu1()),
                  );
                },
                child: const Text('Part 2'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
