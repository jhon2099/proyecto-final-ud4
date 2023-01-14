import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:pf_conexion01/application/use_cases/frmLogin.dart';

void main() async {
  await WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "AIzaSyByHhgCNjaJkKM-CCK4JRzNXLDWQbp1zQM",
          projectId: "bdmatricula01",
          messagingSenderId: "713603874398",
          appId: "1:713603874398:web:ad630149d77ef8cc337ecf"));
  return runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: frmSegLogin());
  }
}
