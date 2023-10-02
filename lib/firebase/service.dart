// Solo para pruebas
import 'dart:developer';

// Firebase
import 'package:cloud_firestore/cloud_firestore.dart';

FirebaseFirestore firestore = FirebaseFirestore.instance;

/// Obtiene la lista de la institución a la que pertenece el usuario
/// @role: Admin
/// @return: Map<String, dynamic>
Future<Map<String, dynamic>> getInstitute() async {
  Map<String, dynamic> instituteList = {};
  try {
    await firestore
        .collection('instituciones')
        .doc('KAbIrT1ER6VW2zR1MT89') // TODO: Cambiar por el id del usuario
        .get()
        .then((value) {
      log(value.data().toString()); // TODO: Eliminar para producción
      instituteList = value.data()!;
    });
    return instituteList;
  } catch (e) {
    return {};
  }
}

/// Obtiene la lista de grupos a los que pertenece el usuario
/// @role: Teacher
/// @return: Map<String, dynamic>
Future<Map<String, dynamic>> getTeacherGroups() async {
  Map<String, dynamic> instituteList = {};
  try {
    await firestore
        .collection('instituciones')
        .doc(
            'KAbIrT1ER6VW2zR1MT89') // TODO: Cambiar por el id de la institución
        .collection('teachers')
        .doc('Z5xeFfRHwIqSXFU0xLvy') // TODO: Cambiar por el id del usuario
        .get()
        .then((value) {
      log(value.data()!['groups'].toString()); // TODO: Eliminar para producción
      instituteList = value.data()!['groups'];
    });
    return instituteList;
  } catch (e) {
    return {};
  }
}
