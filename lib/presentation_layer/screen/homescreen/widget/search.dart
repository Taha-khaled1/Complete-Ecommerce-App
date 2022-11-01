import 'package:ecomm/presentation_layer/Infowidget/ui_components/info_widget.dart';
import 'package:flutter/material.dart';
import '../../../resource/ConstantVarible.dart';
import '../../../resource/MangeColor.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InfoWidget(
      builder: (context, deviceInfo) {
        return Container(
          width: deviceInfo.screenWidth * 0.6,
          decoration: BoxDecoration(
            color: MangeColor.kSecondaryColor.withOpacity(0.1),
            borderRadius: BorderRadius.circular(15),
          ),
          child: const TextField(
            //  onChanged: (value) => print(value),
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(
                horizontal: MangementVarible.kDefaultPaddin,
                vertical: MangementVarible.kDefaultPaddin / 2,
              ),
              border: InputBorder.none,
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              hintText: "Search product",
              prefixIcon: Icon(Icons.search),
            ),
          ),
        );
      },
    );
  }
}
