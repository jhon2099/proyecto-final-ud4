// ignore_for_file: unused_import, camel_case_types, prefer_const_constructors, file_names, deprecated_member_use

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:pf_conexion01/application/use_cases/frmLogin.dart';
import 'package:pf_conexion01/application/use_cases/frmPrincipal.dart';

import '../../infrastructure/controllers/conexion.dart';

class regUsuario extends StatefulWidget {
  const regUsuario({super.key});
  @override
  State<regUsuario> createState() => _frmregUsuarioState();
}

final txtnombre = TextEditingController();
final txtlogueo = TextEditingController();
final intclave = TextEditingController();

class _frmregUsuarioState extends State<regUsuario> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('REGISTRO DE USUARIO'),
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
      body: CustomScrollView(
        slivers: [
          // SliverAppBar(
          //   title: Text('Registro de producto'),
          // ),
          SliverGrid(
            delegate: SliverChildListDelegate([
              Column(
                // mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                      alignment: Alignment.centerLeft, child: Text("Usuario")),
                  TextField(
                    controller: txtlogueo,
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
                  Container(
                      alignment: Alignment.centerLeft,
                      child: Text("Contraseña")),
                  TextField(
                    controller: intclave,
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
                  Container(
                      alignment: Alignment.centerLeft,
                      child: Text("Confirmar Contraseña")),
                  TextField(
                    controller: intclave,
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton(
                          onPressed: () async {
                            await addDato1(txtlogueo.text, intclave.text);
                          },
                          style: TextButton.styleFrom(
                              primary: Colors.deepPurple,
                              backgroundColor: Colors.deepPurple[100]),
                          child: Text('Registrar')),
                      ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => frmSegLogin(),
                                ));
                          },
                          style: TextButton.styleFrom(
                              primary: Colors.orange,
                              backgroundColor: Colors.orange[100]),
                          child: Text('Volver')),
                    ],
                  )
                ],
              )
            ]),
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 500,
              mainAxisSpacing: 50,
              crossAxisSpacing: 300,
              mainAxisExtent: 800,
            ),
          ),
        ],
      ),
    );
  }
}
