// ignore_for_file: file_names

import 'package:ecomm/data_layer/database/connectdatabase.dart';

import '../../presentation_layer/resource/linksApi.dart';

itemviewData(String id) async {
  Curd curd = Curd();
  var respons = await curd.postrequest(
    LinksApi.itemview,
    {
      'id': id,
    },
  );
  return respons;
}
