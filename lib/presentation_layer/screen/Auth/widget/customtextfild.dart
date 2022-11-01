import 'package:ecomm/presentation_layer/Infowidget/models/device_info.dart';
import 'package:flutter/material.dart';

class Textfeild extends StatelessWidget {
  final DeviceInfo deviceInfo;
  final String titel;
  final bool? obsecuer;
  final IconData? icon;
  final void Function()? iconontap;
  final void Function(String?)? onsaved;
  final String? Function(String?)? valid;
  const Textfeild(
      {super.key,
      this.iconontap,
      this.obsecuer,
      this.icon,
      required this.valid,
      required this.onsaved,
      required this.deviceInfo,
      required this.titel});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: deviceInfo.localWidth * 0.9,
      child: TextFormField(
        obscureText: obsecuer == null ? false : obsecuer!,
        onSaved: onsaved,
        validator: valid,
        decoration: InputDecoration(
          suffixIcon: icon != null
              ? IconButton(
                  onPressed: iconontap,
                  icon: Icon(icon),
                )
              : null,
          border: const OutlineInputBorder(borderSide: BorderSide.none),
          filled: true,
          fillColor: Colors.white,
          label: Text(titel),
        ),
      ),
    );
  }
}
