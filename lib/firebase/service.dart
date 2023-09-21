import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';

FirebaseFirestore firestore = FirebaseFirestore.instance;

Future<Map<String, dynamic>> getInstitute() async {
  Map<String, dynamic> instituteList = {};
  try {
    await firestore
        .collection('instituciones')
        .doc('KAbIrT1ER6VW2zR1MT89')
        .get()
        .then((value) {
      log(value.data().toString());
      instituteList = value.data()!;
    });
    return instituteList;
  } catch (e) {
    return {};
  }
}

Future<Map<String, dynamic>> getTeacherGroups() async {
  Map<String, dynamic> instituteList = {};
  try {
    await firestore
        .collection('instituciones')
        .doc('KAbIrT1ER6VW2zR1MT89')
        .collection('teachers')
        .doc('Z5xeFfRHwIqSXFU0xLvy')
        .get()
        .then((value) {
      log(value.data()!['groups'].toString());
      instituteList = value.data()!['groups'];
    });
    return instituteList;
  } catch (e) {
    return {};
  }
}
