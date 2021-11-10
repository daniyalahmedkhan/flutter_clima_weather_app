import 'package:flutter/material.dart';
import 'package:flutter_clima_weather_app/screens/loading.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     theme: ThemeData.dark(),
      home: loading(),
    );
  }

}

