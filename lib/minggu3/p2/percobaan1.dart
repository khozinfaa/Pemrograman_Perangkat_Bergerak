import 'package:flutter/material.dart';
import 'package:flutterproject/minggu3/p2/model/tourism_place.dart';
import 'package:flutterproject/minggu3/p2/detail_screen.dart';

class Percobaann1 extends StatelessWidget {
  const Percobaann1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wisata Pantai Tulungagung'),
      ),
      body: ListView.builder(
          itemBuilder: (context, index){
            final Tourismplace place = tourismPlaceList[index];
            return InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return DetailScreen(place: place);
                }));
              },
              child: SingleChildScrollView(child: listItem(place))
            );
            },
        itemCount: tourismPlaceList.length,
      ),
    );
  }


  Widget listItem(Tourismplace place){
    return Card(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              flex: 1,
              child: Image.asset(
                  place.imageAsset,
                  height: 80,
              )
          ),
          Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      place.name,
                      style: TextStyle(fontSize: 16.0),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(place.location),
                  ],
                ),
              ),
          ),
        ],
      ),
    );
  }
}
