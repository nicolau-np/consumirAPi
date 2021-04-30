import 'package:consumirapi/constants/strings.dart';
import 'package:http/http.dart' as http;

class Api_Manager{
  void getContactos(){
    var client = http.Client();

    client.get(Strings.contacto_url);


  }
}