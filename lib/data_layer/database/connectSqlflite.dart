// ignore_for_file: file_names

import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class SqlDb {
  static Database? _db;

  Future<Database?> get db async {
    if (_db == null) {
      _db = await intialDb();
      return _db;
    } else {
      return _db;
    }
  }

  intialDb() async {
    String databasepath = await getDatabasesPath();
    String path = join(databasepath, 'ecommerce.db');
    Database mydb = await openDatabase(path,
        onCreate: _onCreate, version: 10, onUpgrade: _onUpgrade);
    return mydb;
  }

  _onUpgrade(Database db, int oldversion, int newversion) async {
    // await db.execute('ALTER TABLE notes ADD COLUMN color TEXT');
  }

  _onCreate(Database db, int version) async {
    // طريقة الباتش هتكون افضل طريقه تجعلك تضيف اكتر من جدول او تعمل اكتر من عمليه ف نفس الوقت
    Batch batch = db.batch();

    batch.execute('''
    CREATE TABLE favorite (
    "id" INTEGER  NOT NULL PRIMARY KEY  AUTOINCREMENT,
    "isfavorit" INTEGER NULL,
    "title" TEXT(500),
    "image" TEXT(500),
    "descr" TEXT(5000),
    "price" TEXT(500)
);
 ''');
    batch.execute('''
    CREATE TABLE cart (
    "id" INTEGER  NOT NULL PRIMARY KEY  AUTOINCREMENT,
    "itemsId" INTEGER NULL,
    "itemsName" TEXT(255),
    "itemsPrice" TEXT(255),
    "itemsImage" TEXT(255),
    "itemsDiscount" TEXT(255)
);
 ''');
    // print(" onCreate =====================================");
    batch.commit();
  }

  // List<Data> test = [];
  // var t = test[0].itemsDiscount;
  readData(String sql) async {
    Database? mydb = await db;
    List<Map> response = await mydb!.rawQuery(sql);
    return response;
  }

  insertData(String sql) async {
    Database? mydb = await db;
    int response = await mydb!.rawInsert(sql);
    return response;
  }

  updateData(String sql) async {
    Database? mydb = await db;
    int response = await mydb!.rawUpdate(sql);
    return response;
  }

  deleteData(String sql) async {
    Database? mydb = await db;
    int response = await mydb!.rawDelete(sql);
    return response;
  }
  /////////////////////////////////////الدوال الجاهزه

  read(String table) async {
    Database? mydb = await db;
    List<Map> response = await mydb!.query(table);
    return response;
  }

  insert(String table, Map<String, Object?> values) async {
    Database? mydb = await db;
    int response = await mydb!.insert(table, values);
    return response;
  }

  update(
    String table,
    Map<String, Object?> values,
    String? where,
  ) async {
    Database? mydb = await db;
    int response = await mydb!.update(table, values, where: where);
    return response;
  }

  delete(
    String table,
    String? where,
  ) async {
    Database? mydb = await db;
    int response = await mydb!.delete(table, where: where);
    return response;
  }

///////////////////دالة حذف الداتا بيز كاملا
  fordeletedatabase() async {
    String databasepath = await getDatabasesPath();
    String path = join(databasepath, 'ecommerce.db');
    await deleteDatabase(path);
  }
}
////لو عاوز اضيف بينات في الحقول اللي عندي 
//   IconButton(onPressed: ()async{
//  int respons =await sqlDb.insertData('''
// INSERT INTO notes 
// (titel,name,color)
//  VALUES 
//  ('${titel.text}','${name.text}','${color.text}') ''');

//   })


//  batch.execute('''
//   CREATE TABLE "favorite" (
//     "id" INTEGER  NOT NULL PRIMARY KEY  AUTOINCREMENT, 
//     "isfavorit" INTEGER NULL
//   )
//  ''');

// داله ثابته عشان تقدر تجيب اي بينات من جدول
//وكده البينات متخزنه ف ليست تقدر من خلال
// ليست فيو بيلدر تعمل
//اي حاجه ف البيانات دي بسهوله
// List not = [];
//   onPressed: () async {
                    //   List<Map> responsev =
                    //       await Sqldb.readData("SELECT * FROM notes");
                    //   not.clear();
                    //   not.addAll(responsev);
                    //   print('notelength 1: ${not.length}');
                    //   if (this.mounted) {
                    //     print('notelength 2: ${not.length}');
                    //     setState(() {});
                    //   }
                    //   print('notelength 3: ${not.length}');
                    //   print('note : $not');
                    //   print('respons : $responsev');
                    // },
// }



//لو عاوز تعرض بينات جبتها من قواعد البينات في ليست
//وعاوز تعرضها ف ال وجهه التفاعليه
//وكمان عاوز تحذف بينات معينه في حقل معين و جدول معين
// ListView.builder(
//   itemCount: not.length,
//   itemBuilder: (BuildContext context, int index) {
//     return Container(
//       child: Column(
//         children: [
//           IconButton(onPressed: ()async{
// int respons =await sqlDb.deleteData("DELETE FROM notes WHERE id = ${not[index]['id']} ");
// if(respons>0){

//   not.removeWhere((element) => element['id']==${not[index]['id']});
// }
//           }, icon: Icon(Icons.delete))
//         ],
//       ),
//     );
//   },
// ),





/////////////////////////////
///لو عندك بيانات وعاوز تعدل او تحدث قيمة حقل ادخلت بيناته قبل كده
//    IconButton(onPressed: ()async{
// int respons =await sqlDb.updateData('''
// UPDATE notes SET
// titel = '${titel.text}' ,
// color ='${color.text} ,
// name = '${name.text}'
// WHERE id ='${id}'
// '''

// );

//    })
//{titel.text}' ,'${color.text}  المتغيرات دي قيم المستخدم مثلا هيكتبيها في تيكست فيلد مثلا



//////////////////////////////////////
///    children: [
                  // ElevatedButton(
                  //   onPressed: () async {
                  //     List<Map> responsev =
                  //         await Sqldb.readData("SELECT * FROM notes");
                  //     not.addAll(responsev);
                  //     print('note : $not');
                  //     print('respons : $responsev');
                  //     if (this.mounted) {
                  //       setState(() {});
                  //     }
                  //   },
                  //   child: Text('readdata'),
                  // ),
                  // ElevatedButton(
                  //   onPressed: () async {
                  //     int respons = await Sqldb.insertData('''
                  //       INSERT INTO notes 
                  //       (note) VALUES ('${titel.text}') 
                  //       ''');
                  //   },
                  //   child: Text('insertdata'),
                  // ),
                  // ElevatedButton(
                  //   onPressed: () async {
                  //     int respons = await Sqldb.updateData('''
                  //      UPDATE notes SET
                  //      note = '${titel.text}' 
                  //      WHERE id ='${1}'
                  //      ''');
                  //   },
                  //   child: Text('updetedata'),
                  // ),
                  // ElevatedButton(
                  //   onPressed: () async {
                  //     int respons = await Sqldb.deleteData(
                  //         "DELETE FROM notes WHERE id = ${2} ");
                  //     if (respons > 0) {
                  //       not.removeWhere((element) => element['id'] == 2);
                  //     }
                  //   },
                  //   child: Text('deletedata'),
                  // ),