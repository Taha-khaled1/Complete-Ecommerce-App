// ignore_for_file: file_names
import 'package:ecomm/data_layer/database/connectSqlflite.dart';
import 'package:ecomm/domain_layer/models/AllDataHome.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import '../../../../application_layer/ShardFunction/statusrequst.dart';

abstract class OverrideHomecontroller extends GetxController {
  late StatusRequest statusRequest;
  List? catogeris = [];
  AllDataHome? viewhomeitemandcato;
  int selectedIndex = 0;
  SqlDb sql = SqlDb();
  int price = 0;
  getdata();
  gotoitemscreen(String id);
  void botoomselectindex(int index);
  funcGetCart();
  curentpagebotomnav(int i);
}
