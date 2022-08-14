import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../constants/icons.dart';

class CustomNotificationsIcon extends StatelessWidget {
  const CustomNotificationsIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topRight,
      children: [
        Container(
          padding: const EdgeInsets.all(12.0),
          width: 55.0,
          height: 55.0,
          decoration: const BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: cVeryLightGreyColor,
                spreadRadius: -10.0,
                blurRadius: 10.0,
                offset: Offset(1.0, 3.0),
              ),
            ],
          ),
          child: Image.asset(
            CustomIcons.notification,
            color: cdarkBlackColor,
          ),
        ),
        Container(
          width: 20.0,
          height: 20.0,
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(7.5),
            boxShadow: const [
              BoxShadow(
                color: cVeryLightGreyColor,
                spreadRadius: 0.5,
                blurRadius: 5.0,
                offset: Offset(1.0, 3.0),
              ),
            ],
            gradient: const LinearGradient(
              colors: [cLightReddishColor, cDarkReddishColor],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: const Center(
            child: Text(
              '2',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 12.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontFamily: 'Montserrat',
              ),
            ),
          ),
        ),
      ],
    );
  }
}
