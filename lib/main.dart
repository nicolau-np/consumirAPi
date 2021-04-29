import 'package:consumirapi/controllers/contacto_manager.dart';
import 'package:consumirapi/posts.dart';
import 'package:consumirapi/screens/contacts.dart';
import 'package:consumirapi/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => ContactoManager())],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        initialRoute: '/posts',
        routes: {
          '/home': (context) => HomePage(),
          '/contacts': (context) => ContactosPage(),
          '/posts': (context) => PostsPage(),
        },
      ),
    );
  }
}
