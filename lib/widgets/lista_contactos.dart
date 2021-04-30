import 'dart:convert';

import 'package:consumirapi/controllers/contacto_manager.dart';
import 'package:consumirapi/models/contacto_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;


Future<Contactos> fetchContactos() async {
  final response =
      await http.get(Uri.https('http://127.0.0.1/api', 'contactos'));

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return Contactos.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}

class Contactos {
  final int id;
  final String nome;
  final String genero;

  Contactos({@required this.id, @required this.nome, @required this.genero});

  factory Contactos.fromJson(Map<String, dynamic> json) {
    return Contactos(
      id: json['id'],
      nome: json['nome'],
      genero: json['genero'],
    );
  }
}



class ListaContactos extends StatefulWidget {

  @override
  _ListaContactosState createState() => _ListaContactosState();
}

class _ListaContactosState extends State<ListaContactos> {
  Future<Contactos> futureContacto;

  @override
  Widget build(BuildContext context) {

    @override
    void initState(){
      super.initState();
      futureContacto = fetchContactos();
    }

    return Center(
          child: FutureBuilder<Contactos>(
            future: futureContacto,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Text(snapshot.data.nome);
              } else if (snapshot.hasError) {
                return Text("${snapshot.error}");
              }

              // By default, show a loading spinner.
              return CircularProgressIndicator();
            },
          ),
       
      );
  }
}
