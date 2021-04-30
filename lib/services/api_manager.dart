import 'package:consumirapi/constants/strings.dart';
import 'package:http/http.dart' as http;

class Api_Manager{
  void getContactos() async{
    var client = http.Client();

    var response = await client.get(Strings.contacto_url);
    if(response.statusCode == 200){
      var jsonString = response.body;
    }

  }
}