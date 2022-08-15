import 'dart:ui';

import 'package:flutter/material.dart';

import '../constants.dart';
import '../components/custom_widgets.dart';
import '../constants/colors.dart';
import '../constants/icons.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage(
      {Key? key,
      required this.index,
      required this.placeName,
      required this.imagePaths,
      required this.location,
      required this.price,
      required this.distance,
      required this.ratings,
      required this.description})
      : super(key: key);
  final int index;
  final String placeName;
  final List<String> imagePaths;
  final String location;
  final String price;
  final String distance;
  final String ratings;
  final String description;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final padding = MediaQuery.of(context).padding;
    final deviceHeight = size.height - padding.top - padding.bottom;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            height: deviceHeight + 80,
            margin: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                Expanded(
                  flex: 3,
                  child: Stack(
                    children: [
                      Hero(
                        tag: 'cardImage$index',
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30.0),
                            image: DecorationImage(
                              image: AssetImage(imagePaths[0]),
                              fit: BoxFit.cover,
                            ),
                            boxShadow: const [
                              BoxShadow(
                                color: cVeryLightGreyColor,
                                spreadRadius: -1.0,
                                blurRadius: 5.0,
                                offset: Offset(0, 5.0),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0),
                          gradient: const LinearGradient(
                            colors: [
                              Colors.transparent,
                              cBlackColorOpac,
                            ],
                            stops: [0.05, 0.95],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                GestureDetector(
                                  onTap: () => Navigator.pop(context),
                                  child: Container(
                                    width: 55.0,
                                    height: 55.0,
                                    padding: const EdgeInsets.all(10.0),
                                    decoration: const BoxDecoration(
                                      color: cGreyLikeBackgroundColorV2,
                                      shape: BoxShape.circle,
                                    ),
                                    child: Image.asset(
                                      CustomIcons.left,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 55.0,
                                  height: 55.0,
                                  padding: const EdgeInsets.all(15.0),
                                  decoration: const BoxDecoration(
                                    color: cGreyLikeBackgroundColorV2,
                                    shape: BoxShape.circle,
                                  ),
                                  child: Image.asset(
                                    CustomIcons.heart,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.6,
                                      child: Text(
                                        placeName,
                                        style: const TextStyle(
                                          fontSize: 30.0,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                        softWrap: false,
                                        overflow: TextOverflow.fade,
                                      ),
                                    ),
                                    cDefaultHeight,
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.6,
                                      child: RichText(
                                        softWrap: false,
                                        overflow: TextOverflow.fade,
                                        text: TextSpan(
                                          style: const TextStyle(
                                            color: Colors.white,
                                          ),
                                          children: [
                                            TextSpan(
                                              text: '\$$price',
                                              style: const TextStyle(
                                                fontSize: 30.0,
                                                fontWeight: FontWeight.bold,
                                              ),
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
                                ),
                                SizedBox(
                                  height: MediaQuery.of(context).orientation ==
                                          Orientation.portrait
                                      ? MediaQuery.of(context).size.height *
                                          0.25
                                      : 60.0,
                                  width: MediaQuery.of(context).orientation ==
                                          Orientation.landscape
                                      ? MediaQuery.of(context).size.width * 0.25
                                      : 60.0,
                                  child: MediaQuery.of(context).orientation ==
                                          Orientation.portrait
                                      ? Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            CustomSmallCardWithImage(
                                              imagePath: imagePaths[1],
                                            ),
                                            CustomSmallCardWithImage(
                                              imagePath: imagePaths[2],
                                            ),
                                            CustomSmallCardWithImage(
                                              imagePath: imagePaths[3],
                                            ),
                                          ],
                                        )
                                      : Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            CustomSmallCardWithImage(
                                              imagePath: imagePaths[1],
                                            ),
                                            CustomSmallCardWithImage(
                                              imagePath: imagePaths[2],
                                            ),
                                            CustomSmallCardWithImage(
                                              imagePath: imagePaths[3],
                                            ),
                                          ],
                                        ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    margin: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        cDefaultHeight,
                        Row(
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
                                        const LinearGradient(
                                      colors: [
                                        cLightReddishColor,
                                        cDarkReddishColor,
                                      ],
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                    ).createShader(bounds),
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
                                      style: const TextStyle(
                                        fontSize: 20.0,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const Text(
                                      'Distance',
                                      style:
                                          TextStyle(color: cVeryLightGreyColor),
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
                                        const LinearGradient(
                                      colors: [
                                        cLightYellowishColor,
                                        cDarkYellowishColor
                                      ],
                                      begin: Alignment.topRight,
                                      end: Alignment.bottomLeft,
                                    ).createShader(bounds),
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
                                      style: const TextStyle(
                                        fontSize: 20.0,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const Text(
                                      'Ratings',
                                      style:
                                          TextStyle(color: cVeryLightGreyColor),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        cDefaultHeight,
                        const Text('Description', style: cSubheadingTextStyle),
                        cDefaultHeight,
                        Text(
                          description,
                          style: const TextStyle(
                            fontSize: 16.0,
                            color: cVeryLightGreyColor,
                          ),
                          maxLines: 3,
                          overflow: TextOverflow.fade,
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: IconButton(
                            padding: const EdgeInsets.all(1.0),
                            splashRadius: 30.0,
                            alignment: Alignment.topCenter,
                            onPressed: () {},
                            icon: const Icon(
                              Icons.expand_more_rounded,
                              color: cVeryLightGreyColor,
                              size: 45.0,
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            height: 60.0,
                            width: double.infinity,
                            alignment: Alignment.center,
                            margin:
                                const EdgeInsets.symmetric(horizontal: 20.0),
                            decoration: BoxDecoration(
                              gradient: const LinearGradient(
                                colors: [clightBlackColor, cdarkBlackColor],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              ),
                              boxShadow: const [
                                BoxShadow(
                                  color: cVeryLightGreyColor,
                                  spreadRadius: -1.0,
                                  blurRadius: 5.0,
                                  offset: Offset(0, 5.0),
                                ),
                              ],
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: const Text(
                              'Book Now',
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
