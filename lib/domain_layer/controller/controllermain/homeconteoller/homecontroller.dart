import 'package:ecomm/application_layer/constant/constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../application_layer/ShardFunction/statusrequst.dart';
import '../../../../application_layer/constant/namedrouts.dart';
import '../../../../application_layer/ShardFunction/AddCartInSqlite.dart';
import '../../../../data_layer/functionrespon/HomegetdataFun.dart';
import '../../../../application_layer/ShardFunction/handling.dart';
import '../../../models/AllDataHome.dart';
import '../../../models/itemviewmodel.dart';
import 'OverrideHomecontroller.dart';

class Homecontroller extends OverrideHomecontroller
    with WidgetsBindingObserver {
  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    const isbackground = AppLifecycleState.paused;
    if (isbackground == state) {
      addTocartInSqlite();
      //  print('zzzzzzzz');
    } else {
      // print('vvvvvvvvvv');
    }
  }

  @override
  getdata() async {
    statusRequest = StatusRequest.loading;
    var responss = await homegetalldata();
    statusRequest = handlingData(responss);
    if (StatusRequest.success == statusRequest) {
      if (responss['status'].toString() == 'success') {
        viewhomeitemandcato = AllDataHome.fromJson(responss);
      } else {
        statusRequest = StatusRequest.failure;
      }
    }
    update();
    return responss;
  }

  @override
  gotoitemscreen(String id) {
    Get.toNamed(Namedrouts().itemscreen, arguments: {
      'id': id,
    });
  }

  @override
  void botoomselectindex(int index) {
    selectedIndex = index;
    update();
  }

  @override
  void onInit() {
    WidgetsBinding.instance.addObserver(this);
    super.onInit();
    getdata();
    funcGetCart();
  }

  @override
  funcGetCart() async {
    List<Map> responsev = await sql.readData("SELECT * FROM cart");
    for (var element in responsev) {
      listCart.add(
        Data(
          itemsId: int.parse('${element['itemsId']}'),
          itemsName: element['itemsName'].toString(),
          itemsPrice: int.parse('${element['itemsPrice']}'),
          itemsImage: element['itemsImage'].toString(),
          //  itemsDiscount: int.parse('${element['itemsDiscount']}'),
        ),
      );
      price += int.parse('${element['itemsPrice']}');
    }

    int respons = await sql.deleteData("DELETE FROM cart");
    if (respons > 0) {
      await sql.readData("SELECT * FROM cart");
    }
  }

  @override
  curentpagebotomnav(int i) {
    i == 2
        ? Get.toNamed(Namedrouts().userprofile)
        : i == 0
            ? Get.toNamed(Namedrouts().home)
            : i == 1
                ? Get.toNamed(Namedrouts().favorit)
                : null;
  }
}
