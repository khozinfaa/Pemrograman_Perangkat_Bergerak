import 'package:flutter/material.dart';
import 'package:flutterproject/minggu4/t/main_screen.dart';
import 'package:flutterproject/minggu4/t/provider/done_tourism_provider.dart';
import 'package:provider/provider.dart';

class Tugas extends StatelessWidget {
  const Tugas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => DoneTourismProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'contacs',
        theme: ThemeData(),
        home: MainScreen3(),
      ),
    );
  }
}