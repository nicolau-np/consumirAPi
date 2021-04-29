import 'package:flutter/foundation.dart';
class ContactoModel{
  
final int id;
final String nome;
final String genero;

ContactoModel({this.id, this.nome, this.genero});

factory ContactoModel.fromJson(Map<String, dynamic> json){
  return ContactoModel(
    id: json['id'] as int,
    nome: json['nome'] as String,
    genero: json['genero'] as String,
  );
}

}