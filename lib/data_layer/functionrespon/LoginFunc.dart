// ignore_for_file: file_names

import 'package:ecomm/data_layer/database/connectdatabase.dart';
import '../../presentation_layer/resource/linksApi.dart';

login(
  String email,
  String password,
) async {
  Curd curd = Curd();
  var respons = await curd.postrequest(
    LinksApi.login,
    {
      'email': email,
      'password': password,
    },
  );
  return respons;
}
