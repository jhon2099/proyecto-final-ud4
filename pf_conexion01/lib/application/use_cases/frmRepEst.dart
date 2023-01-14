// ignore_for_file: camel_case_types, prefer_const_constructors, deprecated_member_use, unnecessary_const, file_names, unnecessary_new

import 'package:flutter/material.dart';
import 'package:pf_conexion01/application/use_cases/frmManU.dart';
import 'package:pf_conexion01/application/use_cases/frmPrincipal.dart';
import 'package:pf_conexion01/application/use_cases/frmRegMatric.dart';
import 'package:pf_conexion01/application/use_cases/frmRegUser.dart';

import '../../infrastructure/controllers/conexion.dart';

// class repEstudiantes extends StatefulWidget {
//   const repEstudiantes({super.key});
//   @override
//   State<repEstudiantes> createState() => _frmrepEstudiantesState();
// }

// class _frmrepEstudiantesState extends State<repEstudiantes> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('REPORTE DE ESTUDIANTES'),
//         centerTitle: true,
//         elevation: 20,
//         shadowColor: Colors.blue[400],
//         backgroundColor: Colors.deepPurple[700],
//         shape: const RoundedRectangleBorder(
//             borderRadius: BorderRadius.only(
//           bottomRight: Radius.circular(50),
//           bottomLeft: Radius.circular(15),
//         )),
//       ),
//       body: CustomScrollView(
//         slivers: [
//           // SliverAppBar(
//           //   title: Text('Registro de producto'),
//           // ),
//           SliverGrid(
//             delegate: SliverChildListDelegate([
//               Column(
//                 // mainAxisAlignment: MainAxisAlignment.end,

//                 children: [
//                   SizedBox(
//                     height: 20,
//                   ),
//                   // FutureBuilder(
//                   //   future: getLista1(),
//                   //   builder: ((context, snapshot) {
//                   //     if (snapshot.hasData) {
//                   //       return ListView.builder(
//                   //         itemCount: snapshot.data?.length,
//                   //         itemBuilder: ((context, index) {
//                   //           return (snapshot.data?[index]['nombre']
//                   //               ['apellido']);
//                   //         }),
//                   //       );
//                   //     } else {
//                   //       return const Center(
//                   //         child: CircularProgressIndicator(),
//                   //       );
//                   //     }
//                   //   }),
//                   // ),
//                   // FloatingActionButton(
//                   //   onPressed: () async {
//                   //     await Navigator.push(
//                   //         context,
//                   //         MaterialPageRoute(
//                   //             builder: (context) => frmManTipoUsuario()));
//                   //     setState(() {});
//                   //   },
//                   //   child: Icon(Icons.add),
//                   // ),
//                   Container(
//                     decoration: BoxDecoration(
//                       border: Border.all(width: 1, color: Colors.black38),
//                       borderRadius:
//                           const BorderRadius.all(const Radius.circular(8)),
//                     ),
//                     margin: const EdgeInsets.all(4),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceAround,
//                       // ignore: prefer_const_literals_to_create_immutables
//                       children: [
//                         Text("Nombres"),
//                         Text("Apellidos"),
//                         Text("Direccion"),
//                         Text("DNI"),
//                         Text("Telefono"),
//                         Text("Grado"),
//                       ],
//                     ),
//                   ),
//                   SizedBox(
//                     height: 100,
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceAround,
//                     children: [
//                       ElevatedButton(
//                           onPressed: () {
//                             Navigator.push(
//                                 context,
//                                 MaterialPageRoute(
//                                   builder: (context) => frmenuprincipal(),
//                                 ));
//                           },
//                           style: TextButton.styleFrom(
//                               primary: Colors.orange,
//                               backgroundColor: Colors.orange[100]),
//                           child: Text('Volver')),
//                       ElevatedButton(
//                           onPressed: () {
//                             setState(() {});
//                           },
//                           style: TextButton.styleFrom(
//                               primary: Colors.deepPurple,
//                               backgroundColor: Colors.deepPurple[100]),
//                           child: Text('Registrar')),
//                     ],
//                   )
//                 ],
//               )
//             ]),
//             gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
//               maxCrossAxisExtent: 500,
//               mainAxisSpacing: 50,
//               crossAxisSpacing: 300,
//               mainAxisExtent: 1000,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

class frmrepest extends StatefulWidget {
  State<frmrepest> createState() => _frmrepest();
}

class _frmrepest extends State<frmrepest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reporte de estudiantes'),
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
        future: getEs(),
        builder: ((context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data?.length,
              itemBuilder: ((context, index) {
                final _data = snapshot.data![index];
                final _data1 = snapshot.data![index];
                return Card(
                  margin: const EdgeInsets.all(10),
                  // render list item
                  child: ListTile(
                    contentPadding: const EdgeInsets.all(10),
                    title: Text(_data['nombre']),
                    leading: Icon(
                      Icons.person,
                    ),
                    trailing: Icon(Icons.more_vert),
                    tileColor: Colors.black12,
                    subtitle: Text(snapshot.data![index]['direccion']),
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
              context, MaterialPageRoute(builder: (context) => regMatricula()));
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
