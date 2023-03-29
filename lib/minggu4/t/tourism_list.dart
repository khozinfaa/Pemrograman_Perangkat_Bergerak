import 'package:flutter/material.dart';
import 'package:flutterproject/minggu4/model/tourism_place.dart';
import 'package:flutterproject/minggu4/t/detail_screen.dart';
import 'package:flutterproject/minggu4/t/list_item.dart';
import 'package:flutterproject/minggu4/t/provider/done_tourism_provider.dart';
import 'package:provider/provider.dart';


class TourismList extends StatefulWidget{
  const TourismList({Key? key}) : super(key: key);

  @override
  _TourismListState createState() => _TourismListState();
}

class _TourismListState extends State<TourismList>{
  final List<TourismPlace> tourismPlaceList = [
    TourismPlace(
        name: 'Wisata Pantai Kedung Tumpang',
        location: 'Alamat: M2W6+M46, Area Perkebunan Dan P, Pucanglaban, Kec. Pucanglaban, Kabupaten Tulungagung, Jawa Timur 66284',
        imageAsset: 'assets/images/pantai1.jpg',
        about: 'Pantai Kedung Tumpang ini dikenal dengan salah satu pantai dengan adanya karang-karang dan tebing yang terjal yang dapat menjadi salah satu hal untuk menarik wisatawan',
        phonecode: '+62',
        gallery: [
          'assets/images/pantai11.jpg',
          'assets/images/pantai12.jpg',
          'assets/images/pantai13.jpg',
          'assets/images/pantai14.jpg',
        ]
    ),
    TourismPlace(
        name: 'Wisata Pantai Pacar',
        location: 'Alamat: Area Perkebunan Dan P, Pucanglaban, Kec. Pucanglaban, Kabupaten Tulungagung, Jawa Timur 66284',
        imageAsset: 'assets/images/pantai21.jpg',
        about: 'Pantai simpel dengan pemandangan matahari terbenam, berlatar batu & air terjun kecil & diakses melalui tangga.',
        phonecode: '+62',
        gallery: [
          'assets/images/pantai2.jpg',
          'assets/images/pantai22.jpg',
          'assets/images/pantai23.jpg',
          'assets/images/pantai24.jpg',
        ]
    ),
    TourismPlace(
        name: 'Wisata Pantai Lumbung',
        location: 'Alamat: Area Pegununungan perhutani, Jengglungharjo, Kec. Tanggunggunung, Kabupaten Tulungagung, Jawa Timur 66283',
        imageAsset: 'assets/images/pantai31.jpg',
        about: 'Panorama pantai ini terbilang unik karena berupa pantai karang dimana terdapat batuan yang menjorok ke tengah laut membentuk daratan seperti pulau kecil.',
        phonecode: '+62',
        gallery: [
          'assets/images/pantai32.jpg',
          'assets/images/pantai33.jpg',
          'assets/images/pantai34.jpg',
          'assets/images/pantai3.jpg',
        ]
    ),
    TourismPlace(
        name: 'Wisata Pantai Sanggar',
        location: 'Alamat: Area Pegunungan, Jengglungharjo, Kec. Tanggunggunung, Kabupaten Tulungagung, Jawa Timur 66283',
        imageAsset: 'assets/images/pantai4.jpg',
        about: 'Pantai Sanggar memperoleh julukan “The Dreamland of Tulungagung” karena pesona yang dimilikinya. Pantai ini masih alami dan terbilang sebagai destinasi wisata yang masih baru.',
        phonecode: '+62',
        gallery: [
          'assets/images/pantai41.jpg',
          'assets/images/pantai42.jpg',
          'assets/images/pantai43.jpg',
          'assets/images/pantai44.jpg',
        ]
    ),
    TourismPlace(
        name: 'Wisata Pantai Dlodo',
        location: 'Alamat: Dusun Dlodo, Desa Panggung Kalak Kecamatan Pucanglaban, Kabupaten Tulungagung',
        imageAsset: 'assets/images/pantai5.jpg',
        about: 'Pantai Dlodo adalah salah satu objek wisata yang ada di Kabupaten Tulungagung. Pantai Dlodo memiliki pasir berwarna putih bersih dan air laut yang jenih.',
        phonecode: '+62',
        gallery: [
          'assets/images/pantai52.jpg',
          'assets/images/pantai53.jpg',
          'assets/images/pantai54.jpg',
          'assets/images/pantai52.jpg',
        ]
    ),
  ];

  @override
  Widget build(BuildContext context){
    return ListView.builder(
      itemBuilder: (context, index) {
        final TourismPlace place = tourismPlaceList[index];
        return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailScreen(place: place);
              }));
            },
            child: Consumer<DoneTourismProvider>(
                builder: (context, DoneTourismProvider data, widget){
                  return ListItem(
                    place: place,
                    isDone: data.doneTourismPlaceList.contains(place),
                    onCheckboxClick: (bool? value){
                      data.complete(place, value!);
                    },
                  );
                }
            )
        );
      },
      itemCount: tourismPlaceList.length,
    );
  }
}