import 'package:flutter/material.dart';

import '../constants/constants.dart';
import '../constants/colors.dart';
import '../constants/icons.dart';
import '../constants/shadows.dart';
import '../constants/gradients.dart';
import '../constants/data.dart';

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
          gradient: cDarkishGradientColor,
        ),
        child: Image.asset(CustomIcons.shoppingCart),
      ),
    );
  }
}

class CustomMenu extends StatelessWidget {
  const CustomMenu({Key? key, required this.tabHandler}) : super(key: key);
  final VoidCallback tabHandler;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: tabHandler,
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

class CustomNotificationsIcon extends StatelessWidget {
  const CustomNotificationsIcon({Key? key, required this.tabHandler})
      : super(key: key);
  final VoidCallback tabHandler;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topRight,
      children: [
        RawMaterialButton(
          onPressed: tabHandler,
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
              '6',
              style: cNotificationsNumberTextStyle,
            ),
          ),
        ),
      ],
    );
  }
}

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
                  boxShadow: cCustomProfilesBoxShadow,
                  image: DecorationImage(
                    image:
                        AssetImage('assets/images/profiles/${index + 1}.png'),
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
  const CustomSmallCardWithImage(
      {Key? key,
      required this.imagePath,
      required this.index,
      required this.imagePaths})
      : super(key: key);
  final String imagePath;
  final int index;
  final List<String> imagePaths;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60.0,
      height: 60.0,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        border: Border.all(
          color: imagePaths[index] == imagePath
              ? Colors.white
              : cGreyLikeBackgroundColorV2,
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

class EachTravelPlaceInfo extends StatelessWidget {
  const EachTravelPlaceInfo(
      {Key? key, required this.categoryTracker, required this.index})
      : super(key: key);
  final int categoryTracker;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          cDummyDataSet[categoryTracker]['places'][index]['placeName'],
          style: cMainCardHeadingTextStyle,
        ),
        Row(
          children: [
            SizedBox(
              width: 20.0,
              height: 20.0,
              child: Image.asset(
                CustomIcons.pin,
                color: cVeryLightGreyColor,
              ),
            ),
            const SizedBox(
              width: 5.0,
            ),
            SizedBox(
              width: 120.0,
              child: Text(
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                cDummyDataSet[categoryTracker]['places'][index]['location']
                    as String,
                style: cMainCardLocationTextStyle,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class CustomTransparentButtons extends StatelessWidget {
  const CustomTransparentButtons(
      {Key? key, required this.childIcon, required this.tabHandler})
      : super(key: key);
  final String childIcon;
  final VoidCallback tabHandler;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: tabHandler,
      constraints: const BoxConstraints.tightFor(width: 55.0, height: 55.0),
      shape: const CircleBorder(),
      fillColor: cGreyLikeBackgroundColorV2,
      elevation: 0.0,
      padding: const EdgeInsets.all(10.0),
      child: Image.asset(childIcon, color: Colors.white),
    );
  }
}

class CustomBookNowButton extends StatelessWidget {
  const CustomBookNowButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20.0),
      decoration: BoxDecoration(
        gradient: cDarkishGradientColor,
        boxShadow: cDetailsPageBackgroundImageBoxShadow,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: RawMaterialButton(
        onPressed: () {},
        elevation: 1.0,
        constraints:
            const BoxConstraints.tightFor(height: 60.0, width: double.infinity),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: const Text('Book Now', style: cBookNowButtonTextStyle),
      ),
    );
  }
}

class DetailsPageDistanceAndRatings extends StatelessWidget {
  const DetailsPageDistanceAndRatings(
      {Key? key, required this.distance, required this.ratings})
      : super(key: key);
  final String distance;
  final String ratings;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              width: 60.0,
              height: 60.0,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: ShaderMask(
                shaderCallback: (bounds) =>
                    cReddishGradientColor.createShader(bounds),
                child: const Icon(
                  Icons.watch_later_rounded,
                  color: Colors.white,
                  size: 35.0,
                ),
              ),
            ),
            cDefaultWidth,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '$distance KM',
                  style: cDetailsPageDistanceRatingsTextStyle,
                ),
                const Text(
                  'Distance',
                  style: TextStyle(color: cVeryLightGreyColor),
                ),
              ],
            ),
          ],
        ),
        Row(
          children: [
            Container(
              width: 60.0,
              height: 60.0,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: ShaderMask(
                shaderCallback: (bounds) =>
                    cYellowishGradientColor.createShader(bounds),
                child: const Icon(
                  Icons.star_rounded,
                  color: Colors.white,
                  size: 35,
                ),
              ),
            ),
            cDefaultWidth,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  ratings,
                  style: cDetailsPageDistanceRatingsTextStyle,
                ),
                const Text(
                  'Ratings',
                  style: TextStyle(color: cVeryLightGreyColor),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

class DetailsPagePlaceNameAndPrice extends StatelessWidget {
  const DetailsPagePlaceNameAndPrice(
      {Key? key, required this.placeName, required this.price})
      : super(key: key);
  final String placeName;
  final String price;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: MediaQuery.of(context).orientation == Orientation.landscape
              ? MediaQuery.of(context).size.width * 0.5
              : MediaQuery.of(context).size.width * 0.6,
          child: Text(
            placeName,
            style: cDetailsPagePlaceNameTextStyle,
            softWrap: false,
            overflow: TextOverflow.fade,
          ),
        ),
        cDefaultHeight,
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.6,
          child: RichText(
            softWrap: false,
            overflow: TextOverflow.fade,
            text: TextSpan(
              style: const TextStyle(
                fontFamily: 'Montserrat',
              ),
              children: [
                TextSpan(
                  text: '\$$price',
                  style: cDetailsPagePlaceNameTextStyle,
                ),
                const TextSpan(
                  text: '/person',
                  style: TextStyle(fontSize: 14.0),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
