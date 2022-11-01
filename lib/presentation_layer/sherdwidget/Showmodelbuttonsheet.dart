// ignore_for_file: file_names
import 'package:ecomm/presentation_layer/Infowidget/ui_components/info_widget.dart';
import 'package:ecomm/presentation_layer/resource/MangeColor.dart';
import 'package:flutter/material.dart';

import 'custombutten.dart';

Future<void> showmodelbuttntracklive(
  BuildContext context,
) {
  TextTheme textTheme = Theme.of(context).textTheme;
  return showModalBottomSheet<void>(
    context: context,
    builder: (BuildContext context) {
      return InfoWidget(
        builder: (context, deviceInfo) {
          return Container(
            height: deviceInfo.screenHeight * 0.7,
            color: Colors.grey[200],
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    const Icon(
                      Icons.done,
                      size: 140,
                      color: MangeColor.kPrimaryColor,
                    ),
                    Text(
                      'Thank you For \nyour order',
                      style: textTheme.headline4!.copyWith(
                        fontWeight: FontWeight.bold,
                        height: 1.3,
                        color: MangeColor.kPrimaryColor,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      'You can tracking the delivery in \nthe order down',
                      textAlign: TextAlign.center,
                      style: textTheme.headline6!.copyWith(height: 1.3),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Buttenwidget(
                        width: deviceInfo.screenWidth * 0.9,
                        haigh: deviceInfo.screenHeight * 0.075,
                        color: MangeColor.kPrimaryColor,
                        text: 'tracking the Order',
                        press: () {}),
                    Buttenwidget(
                        width: deviceInfo.screenWidth * 0.9,
                        haigh: deviceInfo.screenHeight * 0.075,
                        color: MangeColor.authColorButton,
                        text: 'Moving on to food',
                        press: () {}),
                  ],
                ),
              ),
            ),
          );
        },
      );
    },
  );
}
