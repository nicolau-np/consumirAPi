import 'package:consumirapi/widgets/lista_contactos.dart';
import 'package:flutter/material.dart';

class ContactosPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contactos"),
      ),
      body: ListaContactos(),
        
      
    );
  }
}
