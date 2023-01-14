// ignore_for_file: body_might_complete_normally_nullable

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../../infrastructure/controllers/conexion.dart';
// import '../../infrastructure/entitymanager/eTipoUser.dart';

final txtnombre = TextEditingController();
final txtcodigo = TextEditingController();
final CollectionReference _todos =
    FirebaseFirestore.instance.collection('todos');

class frmManTipoUsuario extends StatefulWidget {
  State<frmManTipoUsuario> createState() => _frmManTipoUsuario();
}

final txtcodTU = TextEditingController();
final txtnomTU = TextEditingController();

class _frmManTipoUsuario extends State<frmManTipoUsuario> {
  //  etipo_usuario cn = etipo_usuario();
  @override
  Widget build(BuildContext context) {
    // _todos.add({'clave': '1236', 'codigo': 'CU00005'});
    // _todos.add({'clave': '1237', 'codigo': 'CU00006'});
    return Scaffold(
      appBar: AppBar(
        title: Text('Mantinimiento tipo usuario'),
        centerTitle: true,
        elevation: 20,
        shadowColor: Colors.blue[400],
        backgroundColor: Colors.deepPurple[700],
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(50),
          bottomLeft: Radius.circular(15),
        )),
      ),
      body: Column(children: [
        SizedBox(
          height: 30,
        ),
        Container(alignment: Alignment.centerLeft, child: Text("Usuario")),
        TextField(
          controller: txtnombre,
          decoration: InputDecoration(
            hintText: '',
            contentPadding: const EdgeInsets.all(15),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 3, color: Colors.grey),
              borderRadius: BorderRadius.circular(10),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 3, color: Colors.grey),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        Container(alignment: Alignment.centerLeft, child: Text("Codigo")),
        TextField(
          controller: txtcodigo,
          decoration: InputDecoration(
            hintText: '',
            contentPadding: const EdgeInsets.all(15),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 3, color: Colors.grey),
              borderRadius: BorderRadius.circular(10),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 3, color: Colors.grey),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        ElevatedButton(
            onPressed: () async {
              await addDato(txtnombre.text, txtcodigo.text);
            },
            style: TextButton.styleFrom(
                primary: Colors.black, backgroundColor: Colors.black12),
            child: Text(
              'Ingreso',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
                fontStyle: FontStyle.italic,
              ),
            ))
      ]),
    );
  }
}
