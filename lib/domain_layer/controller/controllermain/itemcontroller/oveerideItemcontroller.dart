// ignore_for_file: file_names

import 'package:get/get.dart';

import '../../../../application_layer/ShardFunction/statusrequst.dart';
import '../../../models/itemviewmodel.dart';

abstract class OveerideItemcontroller extends GetxController {
  int selectedIndex = 0;
  String? id;
  late StatusRequest statusRequest;
  Itemviewmodel? itemmodelview;
  swaptext(index);
  itemGetdata(String id);
  gotoDetalisitemscreen(List<Data>? infoitem);
}
