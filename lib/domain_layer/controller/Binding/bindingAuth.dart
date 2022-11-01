// ignore_for_file: file_names

import 'package:get/get.dart';
import '../controllermain/authcontroller/Authcontroller.dart';
import '../controllermain/itemcontroller/Itemcontroller.dart';
import '../controllermain/homeconteoller/homecontroller.dart';
import '../controllermain/prudectcontroller/prudectcontroller.dart';

class Mybinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => AuthController(),
    );
  }
}

class Mybindingopenhome extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => Homecontroller(),
    );
  }
}

class Mybindingopeitem extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => Itemcontroller(),
    );
  }
}

class MyBinddingPrudectcontroller extends Bindings {
  @override
  void dependencies() {
    Get.put(
      PrudectController(),
      permanent: true,
    );
  }
}
