import 'package:consumirapi/controllers/contacto_manager.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class ListaContactos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<ContactoManager>(builder: (__, contactoManager, _){
        return ListView.builder(itemBuilder: (BuildContext context, int index){
              return Container(
                child: Text(contactoManager.contactoModel.nome),
              );
        });
    },
    );
  }
}