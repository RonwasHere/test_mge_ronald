import 'package:flutter/material.dart';
import 'package:test_mge_ronald/pages/api.dart';
import 'package:test_mge_ronald/pages/awal.dart';
import 'package:test_mge_ronald/pages/image.dart';
import 'package:test_mge_ronald/pages/input.dart';
import 'package:test_mge_ronald/pages/list.dart';
import 'package:test_mge_ronald/pages/shared.dart';
import 'package:test_mge_ronald/pages/testrow.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MaterialApp(
        routes: {
          '/': (context) => Awal(),
          // '/': (context) => TestRow(),
          '/input': (context) => Input(),
          '/list': (context) => ListPage(),
          '/image': (context) => ImagePage(),
          '/api': (context) => ApiPage(),
          '/shared': (context) => SharedPage(),
        },
      ),
    );
  }
}
