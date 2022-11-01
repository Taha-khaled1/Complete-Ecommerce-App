import 'package:get/get.dart';
import '../../domain_layer/models/AllDataHome.dart';
import '../constant/namedrouts.dart';

gotoDetalisitemscreens(
  List<Itemsview>? infoitem,
) {
  Get.toNamed(Namedrouts().prudectDetelis, arguments: {
    'infoitem': infoitem,
  });
}
