import 'package:flutter/material.dart';
import '../../../../application_layer/constant/constant.dart';
import '../../../../presentation_layer/resource/MangeColor.dart';
import '../../../../presentation_layer/sherdwidget/snackbarcustom.dart';
import '../../../models/Favoritmodel.dart';
import 'OverridPrudectController.dart';

class PrudectController extends OverridPrudectController {
  @override
  putFavorit(List infoitem) async {
    if (isfound == true) {
      oFFActvecolor(infoitem);
    } else {
      actvLove(infoitem);
    }
    whatColor(infoitem[0].itemsId.toString());
    update();
  }

  @override
  oFFActvecolor(List infoitem) async {
    int respons = await sqldb.deleteData(
        "DELETE FROM favorite WHERE isfavorit = ${infoitem[0].itemsId.toString()} ");
    if (respons > 0) {
      isfav.removeWhere(
          (element) => element.isfavorit == infoitem[0].itemsId.toString());
    }
    update();
  }

  @override
  actvLove(List infoitem) async {
    isfav.clear();
    await sqldb.insertData('''
           INSERT INTO favorite 
           (isfavorit,title,image,descr,price) VALUES 
           ('${infoitem[0].itemsId.toString()}',
          '${infoitem[0].itemsName.toString()}',
          '${infoitem[0].itemsImage.toString()}',
          '${infoitem[0].itemsDescrbtion.toString()}',
          '${infoitem[0].itemsPrice.toString()}') 
                 ''');
    List<Map> responsev = await sqldb.readData("SELECT * FROM favorite");
    for (var element in responsev) {
      isfav.add(
        Modelfavorit(
          id: element['id'].toString(),
          isfavorit: element['isfavorit'].toString(),
          descrb: element['descr'].toString(),
          imag: element['image'].toString(),
          price: element['price'].toString(),
          title: element['title'].toString(),
        ),
      );
    }
    isfound = false;
    update();
  }

  @override
  Color whatColor(String itemid) {
    isfound = false;

    Color x = Colors.grey;
    for (var element in isfav) {
      if (itemid == element.isfavorit.toString()) {
        x = Colors.red;
        isfound = true;

        update();
        return x;
      }
    }

    return x;
  }

  @override
  intdata() async {
    List<Map> responsev = await sqldb.readData("SELECT * FROM favorite");
    isfav.clear();
    for (var element in responsev) {
      isfav.add(
        Modelfavorit(
          id: element['id'].toString(),
          isfavorit: element['isfavorit'].toString(),
          descrb: element['descr'].toString(),
          imag: element['image'].toString(),
          price: element['price'].toString(),
          title: element['title'].toString(),
        ),
      );
    }
  }

  @override
  dalay() async {
    await Future.delayed(const Duration(seconds: 5));
    count.value = listCart.length;
  }

  double whatprice() {
    totelprice = x.price.toDouble();
    return totelprice;
  }

  @override
  void onInit() async {
    super.onInit();
    intdata();
    await dalay();
  }

  @override
  addTocartFunction(List infoitem) {
    bool p = false;
    for (var element in listCart) {
      if (element.itemsId == infoitem[0].itemsId!) {
        snackbarcustom(Icons.error, 'The product already exists',
            MangeColor.kPrimaryColor, MangeColor.isFavoroteOOff);
        p = true;
      }
    }
    if (p == false) {
      listCart.add(infoitem[0]);
      snackbarcustom(Icons.done, 'Product added successfully',
          MangeColor.buttonColor1, Colors.green.withOpacity(0.7));
      x.price += int.parse('${infoitem[0].itemsPrice!}');
      update();
    }
    count.value = listCart.length;
  }

  @override
  removCart(int index, var priceremov) {
    int.parse('$priceremov');
    listCart.removeAt(index);
    x.price -= int.parse('$priceremov');
    count.value = listCart.length;
    update();
  }
}
  // @override
  // actvLove(List infoitem) async {
  //   isfav.clear();
  //   await sqldb.insertData('''
  //          INSERT INTO favorite 
  //          (isfavorit,title,image,descr,price) VALUES 
  //          ('${infoitem[0].itemsId}',
  //         '${infoitem[0].itemsName.toString()}',
  //         '${infoitem[0].itemsImage.toString()}',
  //         '${infoitem[0].itemsDescrbtion.toString()}',
  //         '${infoitem[0].itemsPrice.toString()}') 
  //                ''');
  //   List<Map> responsev = await sqldb.readData("SELECT * FROM favorite");
  //   for (var element in responsev) {
  //     isfav.add(
  //       Modelfavorit(
  //         id: element['id'].toString(),
  //         isfavorit: element['isfavorit'].toString(),
  //         descrb: element['descr'].toString(),
  //         imag: element['image'].toString(),
  //         price: element['price'].toString(),
  //         title: element['title'].toString(),
  //       ),
  //     );
  //   }
  //   isfound = false;
  //   update();
  // }