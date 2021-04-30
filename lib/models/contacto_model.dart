// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

List<ContactoModel> welcomeFromJson(String str) => List<ContactoModel>.from(json.decode(str).map((x) => ContactoModel.fromJson(x)));

String welcomeToJson(List<ContactoModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ContactoModel {
    ContactoModel({
        this.id,
        this.nome,
        this.genero,
        this.createdAt,
        this.updatedAt,
    });

    int id;
    String nome;
    String genero;
    DateTime createdAt;
    DateTime updatedAt;

    factory ContactoModel.fromJson(Map<String, dynamic> json) => ContactoModel(
        id: json["id"],
        nome: json["nome"],
        genero: json["genero"],
        createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "nome": nome,
        "genero": genero,
        "created_at": createdAt == null ? null : createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
    };
}
