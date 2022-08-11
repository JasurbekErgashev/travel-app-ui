import 'package:flutter/material.dart';

import '../constants.dart';

class InactiveBottomNavigationItem extends StatelessWidget {
  const InactiveBottomNavigationItem(this.iconPath, this.navigationHandler,
      {Key? key})
      : super(key: key);

  final String iconPath;
  final VoidCallback navigationHandler;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: navigationHandler,
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.05,
        width: MediaQuery.of(context).size.width * 0.075,
        child: Image.asset(iconPath, color: cVeryLightGreyColor),
      ),
    );
  }
}

class ActiveBottomNavigationItem extends StatelessWidget {
  const ActiveBottomNavigationItem(this.iconPath, {Key? key}) : super(key: key);

  final String iconPath;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {},
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
            width: MediaQuery.of(context).size.width * 0.075,
            child: Image.asset(iconPath, color: cdarkBlackColor),
          ),
        ),
        Container(
          height: 5.0,
          width: 5.0,
          decoration: const BoxDecoration(
            color: cdarkBlackColor,
            shape: BoxShape.circle,
          ),
        ),
      ],
    );
  }
}
