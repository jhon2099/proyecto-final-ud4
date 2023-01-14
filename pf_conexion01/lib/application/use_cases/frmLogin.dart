// ignore_for_file: file_names, camel_case_types, use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:pf_conexion01/application/use_cases/frmPrincipal.dart';
import 'package:pf_conexion01/application/use_cases/frmRegUser.dart';

class frmSegLogin extends StatefulWidget {
  @override
  State<frmSegLogin> createState() => _frmSegLogin();
}

final n1 = TextEditingController();
final n2 = TextEditingController();

class _frmSegLogin extends State<frmSegLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black26,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Text('Login'),
            centerTitle: true,
            elevation: 20,
            shadowColor: Colors.blue[400],
            backgroundColor: Colors.black12,
          ),
          SliverGrid(
            delegate: SliverChildListDelegate([
              Column(
                children: [
                  // Container(
                  //   height: 50,
                  //   width: 50,
                  //   child: ClipRRect(
                  //       borderRadius: BorderRadius.circular(300.0),
                  //       child: Image.network(
                  //           'https://w7.pngwing.com/pngs/411/956/png-transparent-customer-login-avatar-head-portrait-client-user-thumbnail.png')),
                  // ),
                  SizedBox(
                      //   height: 100,
                      ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    width: 300,
                    height: 50,
                    child: TextField(
                      controller: n1,
                      decoration: InputDecoration(
                        hintText: 'Usuario',
                        prefixIcon: Icon(
                          Icons.person,
                          color: Colors.black,
                        ),
                        labelText: 'Nombre de usuario\n',
                        contentPadding: const EdgeInsets.all(20),
                        fillColor: Colors.black,
                        labelStyle: TextStyle(color: Colors.grey),
                        hintStyle: TextStyle(color: Colors.grey),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 5, color: Colors.grey),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 3, color: Colors.grey),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    width: 300,
                    height: 50,
                    child: TextField(
                      controller: n2,
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'Contraseña\n',
                        prefixIcon: Icon(
                          Icons.lock,
                          color: Colors.black,
                        ),
                        contentPadding: const EdgeInsets.all(15),
                        fillColor: Colors.black,
                        labelStyle: TextStyle(color: Colors.grey),
                        //hintStyle: TextStyle(color: Colors.grey),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 5, color: Colors.grey),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 3, color: Colors.grey),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  TextButton(
                      onPressed: () {
                        if (n1.text == 'jhon' && n2.text == '123') {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => frmenuprincipal(),
                              ));
                        } else {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                icon: Icon(Icons.error_outline_rounded),
                                title: Text("Ingresó datos incorrectos..."),
                              );
                            },
                          );
                        }
                      },
                      style: TextButton.styleFrom(
                          primary: Colors.black,
                          backgroundColor: Colors.black12),
                      child: const Text(
                        'Ingresar',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  TextButton(
                    onPressed: () async {
                      await Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => regUsuario()));
                      setState(() {});
                    },
                    style: TextButton.styleFrom(
                        primary: Colors.black, backgroundColor: Colors.black12),
                    child: Text(
                      '\n¿Registrar Usuario?\n', //textAlign: TextAlign.end,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              )
            ]),
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 500,
              mainAxisSpacing: 50,
              crossAxisSpacing: 300,
            ),
          ),
        ],
      ),
    );
  }
}
