import 'package:flutter/material.dart';

import 'src/screens/home.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'HF-2021 SwagList',
      home: HomePage(),
    );
  }
}
