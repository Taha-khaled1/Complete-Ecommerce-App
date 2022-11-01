// ignore_for_file: file_names
import 'package:ecomm/presentation_layer/Infowidget/ui_components/info_widget.dart';
import 'package:flutter/material.dart';
import 'package:page_indicator/page_indicator.dart';
import '../../resource/listmodelonbording.dart';
import 'widget/MoveOnboard.dart';
import 'widget/SectionOnboardenter.dart';

// ignore: must_be_immutable
class Onboarding extends StatelessWidget {
  Onboarding({Key? key}) : super(key: key);
  final PageController control = PageController();
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.7,
              child: InfoWidget(
                builder: (context, deviceInfo) {
                  return PageIndicatorContainer(
                    indicatorSelectorColor: Colors.blue,
                    indicatorColor: Colors.grey,
                    shape: IndicatorShape.circle(),
                    length: onBoardingList.length,
                    child: PageView.builder(
                      controller: control,
                      itemCount: onBoardingList.length,
                      itemBuilder: (BuildContext context, int index) {
                        count = index;
                        return SectionOnboardenter(
                            index: index,
                            width1: deviceInfo.localWidth * 0.7,
                            width2: deviceInfo.localWidth * 0.7);
                      },
                    ),
                  );
                },
              ),
            ),
            MoveOnboard(count: count, control: control),
          ],
        ),
      ),
    );
  }
}
