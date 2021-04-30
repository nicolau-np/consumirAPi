import 'dart:convert';

import 'package:consumirapi/constants/strings.dart';
import 'package:consumirapi/models/contacto_model.dart';
import 'package:http/http.dart' as http;

class Api_Manager {
  Future<ContactoModel> getContactos() async {
    var client = http.Client();

    var contactoModel = null;

    try {
      var response = await client.get(Strings.contacto_url);
      if (response.statusCode == 200) {
        var jsonString = response.body;
        var jsonMap = json.decode(jsonString);

        contactoModel = ContactoModel.fromJson(jsonMap);
      }
    } catch (Exception) {
      return contactoModel;
    }

    return contactoModel;
  }
}
