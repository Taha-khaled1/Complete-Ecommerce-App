// ignore_for_file: file_names
import 'dart:ui';
import 'package:ecomm/data_layer/database/connectSqlflite.dart';
import 'package:get/get.dart';
import '../homeconteoller/homecontroller.dart';

abstract class OverridPrudectController extends GetxController {
  SqlDb sqldb = SqlDb();
  bool? isfound = false;
  RxInt count = 0.obs;
  double totelprice = 0;
  Homecontroller x = Get.put(Homecontroller());
  putFavorit(List infoitem);
  oFFActvecolor(List infoitem);
  actvLove(List infoitem);
  Color whatColor(String itemid);
  intdata();
  dalay();
  addTocartFunction(List infoitem);
  removCart(int index, var priceremov);
}
