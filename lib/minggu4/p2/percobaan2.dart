import 'package:flutter/material.dart';
import 'package:flutterproject/minggu4/p2/main_screen.dart';
import 'package:flutterproject/minggu4/p2/provider/done_tourism_provider.dart';
import 'package:provider/provider.dart';

class Percobaan2 extends StatelessWidget {
  const Percobaan2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => DoneTourismProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'contacs',
        theme: ThemeData(),
        home: MainScreen1(),
      ),
    );
  }
}

// @override
// Widget build(BuildContext context) {
//   return Scaffold(
//     appBar: AppBar(
//       title: const Text('Menu'),
//     ),
//     body: Center(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: <Widget>[
//
//         ],
//       ),
//     ),
//   );
// }
// }