import 'dart:convert';

import 'package:consumirapi/helpers/api_request.dart';
import 'package:consumirapi/helpers/const.dart';
import 'package:consumirapi/models/contacto_model.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/foundation.dart';

class ContactoManager extends ChangeNotifier {
  ContactoModel contactoModel = ContactoModel();
  ContactoManager() {
    getContactos();
  }

  bool _isLoading = false;

  bool get loading => _isLoading;
  set loading(bool value) {
    _isLoading = value;
    notifyListeners();
  }

  Future<ApiResponse<ContactoModel>> getContactos() async {
    try {
      var url = '$BASE_URL/contactos/';

      var response = await http.get(url);

      Map mapRensponse = json.decode(response.body);

      if (response.statusCode == 200) {
        contactoModel = ContactoModel.fromJson(mapRensponse);

        notifyListeners();
        return ApiResponse.ok(contactoModel);
      }
      notifyListeners();
      return ApiResponse.error(mapRensponse["message"]);
    } catch (e) {
      print(
        "Erro no login $e",
      );
      return ApiResponse.error("Impossivel fazer login");
    }
  }
}
