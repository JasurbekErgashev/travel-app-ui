import 'package:flutter/material.dart';

import '../constants.dart';

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {},
      child: Container(
        height: double.infinity,
        width: double.infinity,
        padding: const EdgeInsets.all(15.0),
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(
            colors: [clightBlackColor, cdarkBlackColor],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Image.asset(cIconPaths['shopping-cart'] as String),
      ),
    );
  }
}
