import 'package:area_calculator/Area.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const AreaApp());
}

class AreaApp extends StatelessWidget {
  const AreaApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Area',
      theme: ThemeData(
        primaryColor: Colors.teal.shade800,
      ),
      home: const Area(),
    );
  }
}


