import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../constants/icons.dart';

class CustomMenu extends StatelessWidget {
  const CustomMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: () {},
      shape: const CircleBorder(),
      constraints: const BoxConstraints.tightFor(width: 55.0, height: 55.0),
      fillColor: Colors.white,
      elevation: 1.0,
      child: Container(
        padding: const EdgeInsets.all(10.0),
        child: Image.asset(
          CustomIcons.menu,
          color: cdarkBlackColor,
        ),
      ),
    );
  }
}
