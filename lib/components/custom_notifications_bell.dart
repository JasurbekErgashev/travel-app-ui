import 'package:flutter/material.dart';

import '../constants.dart';
import '../constants/colors.dart';
import '../constants/icons.dart';
import '../constants/shadows.dart';
import '../constants/gradients.dart';

class CustomNotificationsIcon extends StatelessWidget {
  const CustomNotificationsIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topRight,
      children: [
        RawMaterialButton(
          onPressed: () {},
          shape: const CircleBorder(),
          constraints: const BoxConstraints.tightFor(width: 55.0, height: 55.0),
          fillColor: Colors.white,
          elevation: 1.0,
          child: Container(
            padding: const EdgeInsets.all(10.0),
            child: Image.asset(
              CustomIcons.notification,
              color: cdarkBlackColor,
            ),
          ),
        ),
        Container(
          width: 20.0,
          height: 20.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7.5),
            boxShadow: cHighLevelBoxShadow,
            gradient: cReddishGradientColor,
          ),
          child: const Center(
            child: Text(
              '2',
              style: cNotificationsNumberTextStyle,
            ),
          ),
        ),
      ],
    );
  }
}
