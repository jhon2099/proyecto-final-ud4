import 'package:pf_conexion01/domain/entities/tipo_usuario.dart';
import 'package:pf_conexion01/infrastructure/controllers/conexion.dart';

class ctipo_usuario {
  conexion con = conexion();
  ctipo_usuario() {
    con = conexion();
  }
  // void select() {
  //   con.read("select * from tipo_usuarios");
  // }

  // void insert(tipo_usuario dato) {
  //   con.write(
  //       "insert into tipo_usuarios values ('${dato.Codigo}','${dato.Nombre}')");
  // }

  // void update(tipo_usuario dato) {
  //   con.write(
  //       "update tipo_usuarios set nombre='${dato.Nombre}' where codigo= '${dato.Codigo}'");
  // }

  // void delete(tipo_usuario dato) {
  //   con.write("delete from tipo_usuarios where codigo= '${dato.Codigo}'");
  // }
}
