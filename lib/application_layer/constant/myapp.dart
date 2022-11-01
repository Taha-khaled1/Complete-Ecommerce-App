import 'package:ecomm/application_layer/constant/Routs.dart';
import 'package:ecomm/application_layer/constant/themdatamain.dart';
import 'package:ecomm/application_layer/service/localizetion/changelangue.dart';
import 'package:ecomm/application_layer/service/localizetion/translate.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    LocaleController controller = Get.put(LocaleController());
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      translations: MyTranslation(),
      locale: controller.language,
      theme: theme,
      getPages: getPage,
    );
  }
}
