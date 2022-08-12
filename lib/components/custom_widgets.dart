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

class ViewAllButton extends StatelessWidget {
  const ViewAllButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80.0,
      height: 30.0,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: const Color(0xFFEDEDED),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: const Text(
        'View All',
        style: TextStyle(
          color: clightBlackColor,
          fontFamily: 'Montserrat',
          fontSize: 12.0,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}

class CustomProfilesWidget extends StatelessWidget {
  const CustomProfilesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 84.0,
      child: Stack(
        alignment: Alignment.centerRight,
        children: [
          ...List.generate(
            4,
            (index) => Positioned(
              left: index * 18,
              child: Container(
                height: 30.0,
                width: 30.0,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.white,
                    width: 2.0,
                  ),
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: const [
                    BoxShadow(
                      color: cVeryLightGreyColor,
                      spreadRadius: -2.0,
                      blurRadius: 5.0,
                      offset: Offset(1.0, 3.0),
                    ),
                  ],
                  image: DecorationImage(
                    image:
                        AssetImage('assets/images/profiles/${index + 1}.png'),
                    //fit: BoxFit.cover,
                  ),
                ),
                child: index == 3
                    ? const Text(
                        '+15',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w500,
                          fontSize: 12.0,
                        ),
                      )
                    : Container(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
