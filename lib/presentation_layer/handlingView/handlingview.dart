import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import '../../application_layer/ShardFunction/statusrequst.dart';
import '../resource/AppImageAsset.dart';

class HandlingDataView extends StatelessWidget {
  final StatusRequest statusRequest;
  final Widget widget;
  const HandlingDataView(
      {Key? key, required this.statusRequest, required this.widget})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return statusRequest == StatusRequest.loading
        ? Center(
            child: SizedBox(
                child: Lottie.asset(AppImageAsset.loading,
                    width: 250, height: 250)),
          )
        : statusRequest == StatusRequest.offlinefailure
            ? Center(
                child: SizedBox(
                    child: Lottie.asset(AppImageAsset.emptybox,
                        width: 250, height: 250)),
              )
            : statusRequest == StatusRequest.serverfailure
                ? Center(
                    child: SizedBox(
                        child: Lottie.asset(AppImageAsset.erorr404,
                            width: 250, height: 250)),
                  )
                : statusRequest == StatusRequest.failure
                    ? Center(
                        child: SizedBox(
                            child: Lottie.asset(AppImageAsset.emptybox,
                                width: 250, height: 250)),
                      )
                    : widget;
  }
}
