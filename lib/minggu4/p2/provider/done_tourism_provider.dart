import 'package:flutter/cupertino.dart';
import 'package:flutterproject/minggu4/model/tourism_place.dart';

class DoneTourismProvider extends ChangeNotifier{
  final List<TourismPlace> _doneTourismProvider = [];
  List<TourismPlace> get doneTourismProvider => _doneTourismProvider;

  void complete(TourismPlace place, bool isDone){
    isDone
        ? _doneTourismProvider.add(place)
        : _doneTourismProvider.remove(place);
    notifyListeners();
  }
}