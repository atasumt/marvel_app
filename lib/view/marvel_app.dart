import 'package:flutter/material.dart';

import 'home_view.dart';

class MarvelApp extends StatelessWidget {
  const MarvelApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}
