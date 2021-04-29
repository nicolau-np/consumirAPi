import 'package:http/http.dart';
import 'package:consumirapi/models/contacto.dart';
import 'dart:convert';

class ContactoManager{
    final String url = "http://127.0.0.1:8000/api/contactos";

    Future<List<Contacto>> getContactos() async{
        Response res = await get(url);
        if (res.statusCode == 200) {
      List<dynamic> body = jsonDecode(res.body);

      List<Contacto> contactos = body
        .map(
          (dynamic item) => Post.fromJson(item),
        )
        .toList();

      return contactos;
    } else {
      throw "Unable to retrieve posts.";
    }
    }

  
}