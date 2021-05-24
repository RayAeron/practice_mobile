import 'package:flutter/material.dart';
import 'practice_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HTTP',
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: PracticePage(),
    );
  }
}
