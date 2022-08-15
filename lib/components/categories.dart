import 'package:flutter/material.dart';

import '../constants.dart';
import '../constants/gradients.dart';
import '../constants/shadows.dart';
import '../constants/colors.dart';

class Categories extends StatelessWidget {
  const Categories(
      {Key? key,
      required this.index,
      required this.categoryTracker,
      required this.tabHandler})
      : super(key: key);
  final int index;
  final int categoryTracker;
  final VoidCallback tabHandler;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: tabHandler,
      child: Container(
        width: 140.0,
        margin: EdgeInsets.only(
          right: index != cDummyDataSet.length - 1 ? 20.0 : 0.0,
        ),
        padding: const EdgeInsets.all(5.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          gradient: index == categoryTracker
              ? cActiveCategoryGradientColor
              : cInactiveCategoryGradientColor,
          boxShadow: cCommonBoxShadow,
        ),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                color: index == categoryTracker
                    ? Colors.white
                    : cScaffoldBackgroundColor,
                borderRadius: BorderRadius.circular(15.0),
              ),
              child:
                  Image.asset(cDummyDataSet[index]['iconImagePath'] as String),
            ),
            const SizedBox(
              width: 20.0,
            ),
            Text(
              cDummyDataSet[index]['sectionName'] as String,
              style: TextStyle(
                color: index == categoryTracker
                    ? const Color(0xFFFFFFFF)
                    : cdarkBlackColor,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
