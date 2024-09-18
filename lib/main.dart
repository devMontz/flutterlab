import 'package:flutter/material.dart';
import 'package:flutterlab/screens/Perfil.dart';
import 'package:flutterlab/screens/home.dart';
import 'package:flutterlab/screens/home_page.dart';
import 'package:flutterlab/screens/map_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => HomePage(),
          '/HomeScreen': (context) => HomeScreen(),
          '/Perfil': (context) => Perfil(),
          '/Mapa': (context) => MapPage(),
        });
  }
}
