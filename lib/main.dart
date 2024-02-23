import 'package:flutter/material.dart';
import 'package:upd/screens/landingPage.dart';
import 'screens/home.dart';
import 'screens/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.light(),
      routes: {
        '/': (context) => HomeScreen(),
        '/login': (context) => LoginPage(),
        '/landing':(context)=>LandingPage(),
      },
    );
  }
}
