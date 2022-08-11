import 'package:flutter/material.dart';

import '../constants.dart';

class CustomMenu extends StatelessWidget {
  const CustomMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
        'assets/icons/menu.png',
        color: cdarkBlackColor,
      ),
    );
  }
}
