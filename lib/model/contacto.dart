import 'package:flutter/foundation.dart';
class Contacto{


  int id;
  String nome;
  String genero;

  Contacto({this.id, this.nome, this.genero});

  factory Contacto.fromJson(Map<String, dynamic> json) {
    return Contacto(
      userId: json['userId'] as int,
      id: json['id'] as int,
      title: json['title'] as String,
      body: json['body'] as String,
    );
  }
}