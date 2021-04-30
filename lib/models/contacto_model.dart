import 'package:flutter/foundation.dart';
class ContactoModel{

  final int id;
  final String nome;
  final String genero;

  ContactoModel({@required this.id, @required this.nome, @required this.genero});

  factory ContactoModel.fromJson(Map<String, dynamic> json) {
    return ContactoModel(
      id: json['id'],
      nome: json['nome'],
      genero: json['genero'],
    );
  }
}