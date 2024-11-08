import 'package:flutter/material.dart';
import 'package:tonopedia_mobile/screens/menu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch(
            primarySwatch: Colors.lightGreen,
          ).copyWith(secondary: Colors.lightGreen[900]),
          useMaterial3: true,
        ),
        home: MyHomePage());
  }
}
