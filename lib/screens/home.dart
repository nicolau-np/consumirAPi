import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Column(
        children: [
          Text("hello World"),
          RaisedButton(
            onPressed: () {
              Navigator.of(context).pushNamed("/contacts");
            },
            child: Text('Contactos'),
            color: Colors.blue,
          )
        ],
      ),
    );
  }
}
