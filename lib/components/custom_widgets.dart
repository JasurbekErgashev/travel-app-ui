import 'package:flutter/material.dart';

import '../constants.dart';
import '../constants/colors.dart';
import '../constants/icons.dart';
import '../constants/shadows.dart';
import '../constants/gradients.dart';

class CustomPreferencesIcon extends StatelessWidget {
  const CustomPreferencesIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 60.0,
        width: 60.0,
        padding: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          gradient: cYellowishGradientColor,
          boxShadow: cCommonBoxShadow,
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Image.asset(
          CustomIcons.preferences,
          color: Colors.white,
        ),
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
          boxShadow: cSearchBarBoxShadow,
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Row(
          children: [
            GestureDetector(
              onTap: () {},
              child: Image.asset(
                CustomIcons.search,
                color: cdarkBlackColor,
              ),
            ),
            const Expanded(
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search places',
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(bottom: 12.0, left: 20.0),
                ),
                cursorColor: cDarkYellowishColor,
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
    return RawMaterialButton(
      onPressed: () {},
      elevation: 0.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      constraints: const BoxConstraints.tightFor(width: 80.0, height: 30.0),
      fillColor: cLightGreyColor,
      child: const Text('View All', style: cViewAllButtonTextStyle),
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

class CustomSmallCardWithImage extends StatelessWidget {
  const CustomSmallCardWithImage({Key? key, required this.imagePath})
      : super(key: key);
  final String imagePath;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60.0,
      height: 60.0,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        border: Border.all(
          color: cGreyLikeBackgroundColorV2,
          width: 4.0,
        ),
        borderRadius: BorderRadius.circular(20.0),
        image: DecorationImage(
          image: AssetImage(
            imagePath,
          ),
        ),
      ),
    );
  }
}
