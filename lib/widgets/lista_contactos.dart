import 'dart:convert';

import 'package:consumirapi/controllers/contacto_manager.dart';
import 'package:consumirapi/models/contacto_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;


class ListaContactos extends StatefulWidget {

  @override
  _ListaContactosState createState() => _ListaContactosState();
}

class _ListaContactosState extends State<ListaContactos> {
 
  @override
  Widget build(BuildContext context) {

    @override
    void initState(){
      super.initState();
      
    }

    return Center(
       child: Text("hello"),
      );
  }
}
