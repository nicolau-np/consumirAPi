import 'dart:convert';
import 'package:consumirapi/models/contacto_model.dart';
import 'package:consumirapi/services/api_manager.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;

class ListaContactos extends StatefulWidget {
  @override
  _ListaContactosState createState() => _ListaContactosState();
}

class _ListaContactosState extends State<ListaContactos> {
  Future<ContactoModel> _contactoMOdel;

  @override
  Widget build(BuildContext context) {
    @override
    void initState() {
      _contactoMOdel = Api_Manager().getContactos();
      super.initState();
    }

    return Container(
      child: FutureBuilder(
        future: _contactoMOdel,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(itemBuilder: (context, index) {
              return Container(
                height: 100,
                color: Colors.red,
              );
            });
          }else{
            return CircularProgressIndicator();
          }
        },
      ),
    );
  }
}
