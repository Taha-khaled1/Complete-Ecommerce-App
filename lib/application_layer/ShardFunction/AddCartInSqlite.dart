// ignore_for_file: file_names
import 'package:ecomm/data_layer/database/connectSqlflite.dart';
import '../constant/constant.dart';

String z = '';
buildsyntxsqlite() {
  z = '';
  for (int i = 0; i < listCart.length; i++) {
    if (i == listCart.length - 1) {
      z += '''('${listCart[i].itemsId.toString()}',
          '${listCart[i].itemsName.toString()}',
          '${listCart[i].itemsPrice.toString()}',
          '${listCart[i].itemsImage.toString()}',
          '${listCart[i].itemsDiscount.toString()}');''';
    } else {
      z += '''('${listCart[i].itemsId.toString()}',
          '${listCart[i].itemsName.toString()}',
          '${listCart[i].itemsPrice.toString()}',
          '${listCart[i].itemsImage.toString()}',
          '${listCart[i].itemsDiscount.toString()}'),''';
    }
  }
}

addTocartInSqlite() async {
  SqlDb sql = SqlDb();
  buildsyntxsqlite();
  try {
    await sql.insertData('''
           INSERT INTO cart 
           (itemsId,itemsName,itemsPrice,itemsImage,itemsDiscount) VALUES ${z.toString()} ''');
  } catch (e) {
    // ignore: avoid_print
    print('Erorr $e');
  }

  await sql.readData("SELECT * FROM cart");
}


























//  await sql.insertData('''
//            INSERT INTO cart 
//            (itemsId,itemsName,itemsPrice,itemsImage,itemsDiscount) VALUES 
          //  ('${listCart[i].itemsId.toString()}',
          // '${listCart[i].itemsName.toString()}',
          // '${listCart[i].itemsPrice.toString()}',
          // '${listCart[i].itemsImage.toString()}',
          // '${listCart[i].itemsDiscount.toString()}') 
//                  ''');