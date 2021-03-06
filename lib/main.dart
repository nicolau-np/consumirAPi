import 'package:consumirapi/screens/contacts.dart';
import 'package:consumirapi/screens/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'consumerAPI',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/contacts',
      routes: {
        '/home': (context) => HomePage(),
        '/contacts': (context) => ContactosPage(),
      },
    );
  }
}
