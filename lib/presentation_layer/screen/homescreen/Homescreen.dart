// ignore_for_file: file_names, must_be_immutable
import 'package:ecomm/data_layer/database/connectSqlflite.dart';
import 'package:ecomm/domain_layer/controller/controllermain/homeconteoller/homecontroller.dart';
import 'package:ecomm/presentation_layer/Infowidget/ui_components/info_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../sherdwidget/Bellandnotfcation.dart';
import 'widget/Catogerysoffers.dart';
import 'widget/Detalisitem.dart';
import 'widget/ListcatogeryUI.dart';
import 'widget/SectionTiel.dart';
import 'widget/customcontainer.dart';
import 'widget/custumbottomnav.dart';

class Homescreen extends StatelessWidget {
  Homescreen({Key? key}) : super(key: key);
  final Homecontroller controller = Get.find();
  SqlDb s = SqlDb();
  @override
  Widget build(BuildContext context) {
    TextTheme textstyel = Theme.of(context).textTheme;
    return Scaffold(
      bottomNavigationBar: const Custombottomnav(),
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: InfoWidget(
            builder: (context, deviceInfo) {
              return SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: deviceInfo.localWidth * 0.05),
                      child: Bellandnotfcation(deviceInfo: deviceInfo),
                    ),
                    Customcontainer(
                        textstyel: textstyel, deviceInfo: deviceInfo),
                    const SizedBox(
                      height: 20,
                    ),
                    const ListcatogeryUI(),
                    SectionTiel(
                        textstyel: textstyel,
                        subtitel: 'see more',
                        titel: 'SpeciaL for you'),
                    const Catogerysoffers(),
                    InkWell(
                      onTap: () async {
                        // isfav.clear();
                        // s.fordeletedatabase();
                      },
                      child: SectionTiel(
                          textstyel: textstyel,
                          subtitel: 'see more',
                          titel: 'Popular product'),
                    ),
                    Detalisitem(),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
