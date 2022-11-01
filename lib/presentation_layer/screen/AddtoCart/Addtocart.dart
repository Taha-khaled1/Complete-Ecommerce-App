// ignore_for_file: file_names
import 'package:ecomm/presentation_layer/screen/AddtoCart/widget/Appbar.dart';
import 'package:flutter/material.dart';
import '../../resource/MangeColor.dart';
import 'widget/Body.dart';
import 'widget/BtoomNavForCartSecreen.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MangeColor.kTextWahtcolor,
      appBar: buildAppBar(context),
      body: Body(),
      bottomNavigationBar: const CheckoutCard(),
    );
  }
}
