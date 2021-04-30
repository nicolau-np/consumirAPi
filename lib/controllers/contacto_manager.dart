import 'dart:convert';

import 'package:consumirapi/helpers/api_request.dart';
import 'package:consumirapi/helpers/const.dart';
import 'package:consumirapi/models/contacto_model.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/foundation.dart';

class ContactoManager extends ChangeNotifier {
  Future<ContactoModel> fetchContacto() async {
  final response =
      await http.get(Uri.https('http://127.0.0.1/api', 'contactos'));

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return ContactoModel.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}
}
