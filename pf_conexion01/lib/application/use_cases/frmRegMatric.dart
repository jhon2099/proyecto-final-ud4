// ignore_for_file: prefer_const_constructors, unused_import, camel_case_types, file_names, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:pf_conexion01/application/use_cases/frmLogin.dart';
import 'package:pf_conexion01/application/use_cases/frmPrincipal.dart';
import 'package:pf_conexion01/application/use_cases/frmRegUser.dart';
import 'package:pf_conexion01/application/use_cases/frmRepEst.dart';

import '../../infrastructure/controllers/conexion.dart';

class regMatricula extends StatefulWidget {
  const regMatricula({super.key});
  @override
  State<regMatricula> createState() => _frmRegMatriculaState();
}

final txtnombre = TextEditingController();
final txtap = TextEditingController();
final txtdirec = TextEditingController();
final txtcel = TextEditingController();
final txtgrado = TextEditingController();
final txtdni = TextEditingController();

class _frmRegMatriculaState extends State<regMatricula> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('REGISTRAR ESTUDIANTE'),
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
                    height: 30,
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Nombres del estudiante",
                    ),
                  ),
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
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                      alignment: Alignment.centerLeft,
                      child: Text("Apellidos del estudiante")),
                  TextField(
                    controller: txtap,
                    decoration: InputDecoration(
                      hintText: '',
                      contentPadding: const EdgeInsets.all(15),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 3, color: Colors.grey),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 3, color: Colors.grey),
                        borderRadius: BorderRadius.circular(10), //<-- SEE HERE
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                      alignment: Alignment.centerLeft,
                      child: Text("Direccion del estudiante")),
                  TextField(
                    controller: txtdirec,
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
                      child: Text("DNI del estudiante")),
                  TextField(
                    controller: txtdni,
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
                      child: Text("Telefono del estudiante")),
                  TextField(
                    controller: txtcel,
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
                      child: Text("Grado del estudiante")),
                  TextField(
                    controller: txtgrado,
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
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => frmenuprincipal(),
                                ));
                          },
                          style: TextButton.styleFrom(
                              primary: Colors.orange,
                              backgroundColor: Colors.orange[100]),
                          child: Text('Menú Principal')),
                      ElevatedButton(
                          onPressed: () async {
                            await addDato2(
                                txtnombre.text,
                                txtap.text,
                                txtdirec.text,
                                txtcel.text,
                                txtgrado.text,
                                txtdni.text);
                          },
                          // onPressed: () {
                          //   setState(() {
                          //     // ignore: unnecessary_new
                          //     // pr = new producto(
                          //     //   int.parse(codReg.text),
                          //     //   nomReg.text,
                          //     //   imgReg.text,
                          //     // );
                          //     // p.add(pr);
                          //     Navigator.push(
                          //         context,
                          //         MaterialPageRoute(
                          //           builder: (context) => repEstudiantes(),
                          //         ));
                          //   });
                          // },
                          style: TextButton.styleFrom(
                              primary: Colors.deepPurple,
                              backgroundColor: Colors.deepPurple[100]),
                          child: Text('Registrar Matricula')),
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
