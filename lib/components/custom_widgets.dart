import 'package:flutter/material.dart';

import '../constants.dart';

class CustomPreferencesIcon extends StatelessWidget {
  const CustomPreferencesIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      width: 60.0,
      padding: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [cLightYellowishColor, cDarkYellowishColor],
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
        ),
        boxShadow: const [
          BoxShadow(
            color: cVeryLightGreyColor,
            spreadRadius: -10.0,
            blurRadius: 10.0,
            offset: Offset(1.0, 3.0),
          ),
        ],
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Image.asset(
        'assets/icons/preferences.png',
        color: Colors.white,
      ),
    );
  }
}

class CustomSearchBox extends StatelessWidget {
  const CustomSearchBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 60.0,
        padding: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
              color: cVeryLightGreyColor,
              spreadRadius: -10.0,
              blurRadius: 10.0,
            ),
          ],
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Row(
          children: [
            Image.asset(
              'assets/icons/search.png',
              color: cdarkBlackColor,
            ),
            const Expanded(
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search places',
                  hintStyle: TextStyle(
                    fontFamily: 'Montserrat',
                  ),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(bottom: 12.0, left: 20.0),
                ),
                cursorColor: cDarkYellowishColor,
                style: TextStyle(
                  fontFamily: 'Montserrat',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
