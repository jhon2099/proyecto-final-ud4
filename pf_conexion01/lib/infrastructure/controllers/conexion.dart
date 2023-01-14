import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

FirebaseFirestore db = FirebaseFirestore.instance;

Future<List> getLista() async {
  //Letura de datos
  List pe = [];
  CollectionReference collectionReference = db.collection('tipo_usuarios');
  QuerySnapshot querySnapshot = await collectionReference.get();
  querySnapshot.docs.forEach((element) {
    pe.add(element.data());
  });
  Future.delayed(const Duration(seconds: 5));
  return pe;
}

Future<List> getUser() async {
  //Letura de datos
  List User = [];
  CollectionReference collectionReferenceUser = db.collection('usuarios');
  QuerySnapshot queryUser = await collectionReferenceUser.get();
  queryUser.docs.forEach((element) {
    User.add(element.data());
  });
  Future.delayed(const Duration(seconds: 5));
  return User;
}

Future<void> addUser(String codigo) async {
  await db.collection('usuarios').add({
    'codigo': codigo,
  });
}

Future<void> addDato(String nombre, String codigo) async {
  await db.collection('tipo_usuarios').add({
    'nombre': nombre,
    'codigo': codigo,
  });
}

Future<void> addDato1(String logueo, String clave) async {
  await db.collection('usuarios').add({
    'logueo': logueo,
    'clave': clave,
  });
}

Future<List> getEs() async {
  //Letura de datos
  List Es = [];
  CollectionReference collectionReferenceEs = db.collection('estudiantes');
  QuerySnapshot queryEs = await collectionReferenceEs.get();
  queryEs.docs.forEach((element) {
    Es.add(element.data());
  });
  Future.delayed(const Duration(seconds: 5));
  return Es;
}

Future<void> addDato2(String nombre, String apellido, String direccion,
    String telefono, String grado, String dni) async {
  await db.collection('estudiantes').add({
    'nombre': nombre,
    'apellido': apellido,
    'direccion': direccion,
    'telefono': telefono,
    'grado': grado,
    'dni': dni,
  });
}

class conexion {
  FirebaseFirestore db = FirebaseFirestore.instance;
  Future<List> select(String tabla) async {
    List pe = [];
    CollectionReference collectionReference = db.collection(tabla);
    QuerySnapshot querySnapshot = await collectionReference.get();
    querySnapshot.docs.forEach((element) {
      pe.add(element.data());
    });
    Future.delayed(const Duration(seconds: 5));
    return pe;
  }
}
// class ItemList  {
  
//   Future<List<Nota>> getNota() async{
//     List<Nota> misNotas[];
//     try{
//       FirebaseFirestore.instance.reference().child
//   Future<List> select(String tabla) async
//       return misNotas
//     }catch(e){
//       return misNotas
//     }
//   }
 
// }
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/widgets.dart';

// class conection extends StatefulWidget {
//   @override
//   State<conection> createState() => _conectionState();
// }

// final CollectionReference _estudiantes =
//     FirebaseFirestore.instance.collection('alumnos');

// class _conectionState extends State<conection> {
//   @override
//   Widget build(BuildContext context) {
//     _estudiantes.add({'nombres': 'Luis', 'apellidos': 'Gonzales'});
//     // TODO: implement build
//     throw UnimplementedError();
//   }
// }
