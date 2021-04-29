import 'package:http/http.dart' as http;

void main() {
  fetch();
}

Future fetch() async {
  var url = "http://127.0.0.1:8000/api/contactos";
  var response = await http.get(url);

  print(response.body);
}
