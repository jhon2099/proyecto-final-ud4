// ignore_for_file: camel_case_types, prefer_const_constructors, unnecessary_const, deprecated_member_use, file_names

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:pf_conexion01/application/use_cases/frmPrincipal.dart';
import 'package:pf_conexion01/application/use_cases/frmRegUser.dart';
import 'package:pf_conexion01/domain/entities/tipo_usuario.dart';

import '../../infrastructure/controllers/conexion.dart';

class frmRepUser extends StatefulWidget {
  State<frmRepUser> createState() => _frmRepUser();
}

class _frmRepUser extends State<frmRepUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reporte de Usuarios'),
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
      body: FutureBuilder(
        future: getUser(),
        builder: ((context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data?.length,
              itemBuilder: ((context, index) {
                final _data = snapshot.data![index];
                // return Text(snapshot.data![index]['codigo']['logueo']);
                return Card(
                  margin: const EdgeInsets.all(10),
                  // render list item
                  child: ListTile(
                    contentPadding: const EdgeInsets.all(10),
                    title: Text(_data['codigo']),
                    subtitle: Text(snapshot.data![index]['logueo']),
                  ),
                );
              }),
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await Navigator.push(
              context, MaterialPageRoute(builder: (context) => regUsuario()));
          setState(() {});
        },
        child: Icon(Icons.add),
        tooltip: "agregar nuevo",
        hoverColor: Colors.black12,
        backgroundColor: Colors.deepPurple,
      ),
    );
  }
}
