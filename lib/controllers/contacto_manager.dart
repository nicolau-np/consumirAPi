import 'dart:convert';

import 'package:consumirapi/models/contacto_model.dart';
import 'package:http/http.dart';

class ContactoManager {
  final String url = "http://127.0.0.1:8000/api/contactos";

  Future<List<ContactoModel>> getContactos() async {
    Response res = await get(url);
    List<dynamic> body = jsonDecode(res.body);
    List<ContactoModel> contactos =
        body.map((dynamic json) => ContactoModel.fromJson(json)).toList();
    return contactos;
  }
}
