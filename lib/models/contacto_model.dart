import 'package:flutter/foundation.dart';
class ContactoModel{
int id;
  String nome;
  String genero;

  ContactoModel({this.id, this.nome, this.genero});

  ContactoModel.fromJson(Map<String, dynamic> json) {
    id = json["data"]['id'];
    nome = json["data"]['nome'];
    genero = json["data"]['genero'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['nome'] = this.nome;
    data['genero'] = this.genero;
    return data;
  }

  @override
  String toString() {
    return "Account(id: $id, nome: $nome, genero: $genero)";
  }

}