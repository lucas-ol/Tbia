import 'package:flutter/material.dart';
import 'package:tbia/pages/home_page.dart';

import 'injection.dart';

void main() {
  getServices();
  runApp(const TbiaApp());
}

class TbiaApp extends StatelessWidget {
  const TbiaApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}
