import 'package:flutter/material.dart';
import 'package:flutterproject/minggu3/p2/model/tourism_place.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key, required this.place}) : super(key: key);

  final Tourismplace place;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(
              place.imageAsset,
              width: Checkbox.width,
            ),
            Container(
              margin: const EdgeInsets.only(top: 16.0),
              child: Text(
                place.name,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Lobster',
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(children: [
                    Icon(Icons.calendar_today),
                    Text('Open until apocalypse')
                  ]),
                  Column(
                    children: [Icon(Icons.add_ic_call), Text(place.phonecode)],
                  ),
                  Column(
                    children: [
                      Icon(Icons.access_alarm),
                      Text('Open until apocalypse')
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16),
              child: Text(
                place.about,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, fontFamily: 'Oxygen'),
              ),
            ),
            Container(
                height: 150,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: place.gallery.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(place.gallery[index])),
                    );
                  },
                ))
          ],
        ),
      ),
    );
  }
}