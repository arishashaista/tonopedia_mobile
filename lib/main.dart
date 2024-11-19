import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tonopedia_mobile/screens/login.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) {
        CookieRequest request = CookieRequest();
        return request;
      },
      child: MaterialApp(
        title: 'Tonopedia',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSwatch(
            primarySwatch: Colors.lightGreen,
          ).copyWith(secondary: Colors.lightGreen[900]),
        ),
        home: const LoginPage(),
      ),
    );
  }
}
