// ignore_for_file: file_names
import 'package:get/get.dart';
import '../../../../application_layer/ShardFunction/statusrequst.dart';
import '../../../../application_layer/constant/namedrouts.dart';
import '../../../../data_layer/functionrespon/ItemFunc.dart';
import '../../../../application_layer/ShardFunction/handling.dart';
import '../../../models/itemviewmodel.dart';
import 'OveerideItemcontroller.dart';

class Itemcontroller extends OveerideItemcontroller {
  @override
  swaptext(index) {
    selectedIndex = index;
    update();
  }

  @override
  itemGetdata(String id) async {
    statusRequest = StatusRequest.loading;
    var responss = await itemviewData(id);
    statusRequest = handlingData(responss);
    if (StatusRequest.success == statusRequest) {
      if (responss['status'].toString() == 'success') {
        itemmodelview = Itemviewmodel.fromJson(responss);
      } else {
        statusRequest = StatusRequest.failure;
      }
    }
    update();
    return responss;
  }

  @override
  void onInit() {
    super.onInit();
    id = Get.arguments['id'];
    itemGetdata(id!);
  }

  @override
  gotoDetalisitemscreen(List<Data>? infoitem) {
    Get.toNamed(Namedrouts().prudectDetelis, arguments: {
      'infoitem': infoitem,
    });
  }
}
