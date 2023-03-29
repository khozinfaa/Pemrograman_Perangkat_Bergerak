import 'package:flutter/material.dart';
import 'package:flutterproject/minggu4/t/done_tourism_list.dart';
import 'package:flutterproject/minggu4/t/tourism_list.dart';

class MainScreen3 extends StatefulWidget {
  MainScreen3({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends  State<MainScreen3> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wisata Pantai Tulungagung'),
        actions: <Widget>[
          IconButton(
              icon: const Icon(Icons.done_outline),
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context){
                    return const DoneTourismList();
                  }),
                );
              }
          )
        ],
      ),
      body: TourismList(),
    );
  }
}