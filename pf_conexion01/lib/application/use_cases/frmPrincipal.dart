// ignore_for_file: prefer_const_constructors, deprecated_member_use, use_key_in_widget_constructors, camel_case_types, file_names

import 'package:flutter/material.dart';
import 'package:pf_conexion01/application/use_cases/frmLogin.dart';
import 'package:pf_conexion01/application/use_cases/frmManU.dart';
import 'package:pf_conexion01/application/use_cases/frmManUser.dart';
import 'package:pf_conexion01/application/use_cases/frmRegMatric.dart';
import 'package:pf_conexion01/application/use_cases/frmRepEst.dart';

import '../../infrastructure/controllers/conexion.dart';

class frmenuprincipal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black38,
      appBar: AppBar(
        title: Text(
          'Menú principal',
          style: TextStyle(fontStyle: FontStyle.italic),
        ),
        backgroundColor: Colors.orange,
      ),
      body: CustomScrollView(
        slivers: [
          // SliverAppBar(
          //   title: Text(''),
          // ),
          SliverGrid(
            delegate: SliverChildListDelegate([
              Column(
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.all(20.0),
                        padding: EdgeInsets.all(10.0),
                        alignment: Alignment.topCenter,
                        width: 200,
                        height: 100,
                        //width: 300,
                        child: Card(
                          child: Center(
                              child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => regMatricula(),
                                        ));
                                  },
                                  style: TextButton.styleFrom(
                                      primary: Colors.blue,
                                      backgroundColor: Colors.blue[100]),
                                  child: Text(
                                    'Agregar Estudiante',
                                    style: TextStyle(
                                        fontStyle: FontStyle.italic,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                  ))
                            ],
                          )),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(20.0),
                        padding: EdgeInsets.all(10.0),
                        alignment: Alignment.topCenter,
                        width: 200,
                        height: 100,
                        child: Card(
                          child: Center(
                              child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => frmrepest(),
                                        ));
                                  },
                                  style: TextButton.styleFrom(
                                      primary: Colors.blue,
                                      backgroundColor: Colors.blue[100]),
                                  child: Text(
                                    'Lista de Estudiantes',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                      fontStyle: FontStyle.italic,
                                    ),
                                  ))
                            ],
                          )),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.all(20.0),
                        padding: EdgeInsets.all(10.0),
                        alignment: Alignment.topCenter,
                        width: 200,
                        height: 100,
                        child: Card(
                          child: Center(
                              child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => frmRepUser(),
                                        ));
                                  },
                                  style: TextButton.styleFrom(
                                      primary: Colors.blue,
                                      backgroundColor: Colors.blue[100]),
                                  child: Text(
                                    'Usuarios',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                      fontStyle: FontStyle.italic,
                                    ),
                                  ))
                            ],
                          )),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(20.0),
                        padding: EdgeInsets.all(10.0),
                        alignment: Alignment.topCenter,
                        width: 200,
                        height: 100,
                        child: Card(
                          child: Center(
                              child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            frmManTipoUsuario(),
                                      ));
                                },
                                style: TextButton.styleFrom(
                                    primary: Colors.blue,
                                    backgroundColor: Colors.blue[100]),
                                child: Text(
                                  'Agregar Tipo de user',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                    fontStyle: FontStyle.italic,
                                  ),
                                ),
                              )
                            ],
                          )),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Center(
                          child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => frmSegLogin(),
                                  ));
                            },
                            style: TextButton.styleFrom(
                                primary: Colors.blue,
                                backgroundColor: Colors.blue[100]),
                            child: Text(
                              'Cerrar Sesion',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                fontStyle: FontStyle.italic,
                              ),
                            ),
                          ),
                        ],
                      )),
                    ),
                  ),
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
