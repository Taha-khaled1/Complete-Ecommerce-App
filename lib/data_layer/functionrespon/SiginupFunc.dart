// ignore_for_file: file_names

import 'package:ecomm/data_layer/database/connectdatabase.dart';
import '../../presentation_layer/resource/linksApi.dart';

siginUpinsert(
  String username,
  String email,
  String password,
  String phone,
) async {
  Curd curd = Curd();
  var respons = await curd.postrequest(
    LinksApi.siginUp,
    {
      'username': username.toString(),
      'email': email.toString(),
      'password': password.toString(),
      "phone": phone.toString()
    },
  );
  return respons;
}
