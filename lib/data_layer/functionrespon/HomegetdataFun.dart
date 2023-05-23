// ignore_for_file: file_names

import 'package:ecomm/data_layer/database/connectdatabase.dart';
import 'package:ecomm/presentation_layer/resource/linksApi.dart';

homegetalldata() async {
  Curd curd = Curd();
  var respons = await curd.postrequest(
    LinksApi.alldatahome,
    {},
  );
  return respons;
}
