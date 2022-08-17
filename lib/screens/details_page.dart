import 'package:flutter/material.dart';

import '../components/custom_widgets.dart';

import '../constants/constants.dart';
import '../constants/colors.dart';
import '../constants/icons.dart';
import '../constants/shadows.dart';
import '../constants/gradients.dart';

class DetailsPage extends StatefulWidget {
  DetailsPage({
    Key? key,
    required this.index,
    required this.placeName,
    required this.imagePaths,
    required this.location,
    required this.price,
    required this.distance,
    required this.ratings,
    required this.description,
    required this.like,
  }) : super(key: key);
  final int index;
  final String placeName;
  final List<String> imagePaths;
  final String location;
  final String price;
  final String distance;
  final String ratings;
  final String description;
  bool like;

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  int _backgroundImageIndex = 0;
  bool _isExpanded = false;
  void _changeBackgroundImage(int index) {
    setState(() {
      _backgroundImageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            margin: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                ConstrainedBox(
                  constraints: BoxConstraints(
                      maxHeight: MediaQuery.of(context).size.height * 0.5),
                  child: Stack(
                    children: [
                      Hero(
                        tag: 'cardImage${widget.index}',
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30.0),
                            image: DecorationImage(
                              image: AssetImage(
                                widget.imagePaths[_backgroundImageIndex],
                              ),
                              fit: BoxFit.cover,
                            ),
                            boxShadow: cDetailsPageBackgroundImageBoxShadow,
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0),
                          gradient: cDetailsPageBlackGradientColor,
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
                                CustomTransparentButtons(
                                  childIcon: CustomIcons.left,
                                  tabHandler: () => Navigator.pop(context),
                                ),
                                CustomTransparentButtons(
                                  childIcon: CustomIcons.heart,
                                  tabHandler: () {
                                    //TODO there is a serious bug below inside setState which needs to be fixed
                                    /// Now, I really feel the importance of State Management
                                    /// I will come back after I have learnt powerful staff about SM
                                    setState(() {
                                      /// wola
                                      !widget.like
                                          ? widget.like = true
                                          : widget.like = false;
                                    });
                                  },
                                  like: widget.like,
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                DetailsPagePlaceNameAndPrice(
                                  placeName: widget.placeName,
                                  price: widget.price,
                                ),
                                SizedBox(
                                  height: MediaQuery.of(context).orientation ==
                                          Orientation.portrait
                                      ? MediaQuery.of(context).size.height *
                                          0.35
                                      : 60.0,
                                  width: MediaQuery.of(context).orientation ==
                                          Orientation.landscape
                                      ? MediaQuery.of(context).size.width * 0.33
                                      : 60.0,
                                  child: MediaQuery.of(context).orientation ==
                                          Orientation.portrait
                                      ? Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            ListView.builder(
                                              shrinkWrap: true,
                                              itemBuilder: (context, index) {
                                                return GestureDetector(
                                                  onTap: () =>
                                                      _changeBackgroundImage(
                                                          index),
                                                  child: Column(
                                                    children: [
                                                      const SizedBox(
                                                        height: 10.0,
                                                      ),
                                                      CustomSmallCardWithImage(
                                                        imagePath: widget
                                                            .imagePaths[index],
                                                        index:
                                                            _backgroundImageIndex,
                                                        imagePaths:
                                                            widget.imagePaths,
                                                      ),
                                                    ],
                                                  ),
                                                );
                                              },
                                              itemCount:
                                                  widget.imagePaths.length,
                                            ),
                                          ],
                                        )
                                      : Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            ListView.builder(
                                              shrinkWrap: true,
                                              scrollDirection: Axis.horizontal,
                                              itemBuilder: (context, index) {
                                                return GestureDetector(
                                                  onTap: () =>
                                                      _changeBackgroundImage(
                                                          index),
                                                  child: Row(
                                                    children: [
                                                      const SizedBox(
                                                        width: 5.0,
                                                      ),
                                                      CustomSmallCardWithImage(
                                                        imagePath: widget
                                                            .imagePaths[index],
                                                        index:
                                                            _backgroundImageIndex,
                                                        imagePaths:
                                                            widget.imagePaths,
                                                      ),
                                                    ],
                                                  ),
                                                );
                                              },
                                              itemCount:
                                                  widget.imagePaths.length,
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
                Container(
                  margin: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      cDefaultHeight,
                      DetailsPageDistanceAndRatings(
                          distance: widget.distance, ratings: widget.ratings),
                      cDefaultHeight,
                      const Text('Description', style: cSubheadingTextStyle),
                      cDefaultHeight,
                      Text(
                        widget.description,
                        style: cDetailsPageDescriptionContentTextStyle,
                        maxLines: !_isExpanded ? 3 : 20,
                        overflow: !_isExpanded
                            ? TextOverflow.fade
                            : TextOverflow.visible,
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: RawMaterialButton(
                          onPressed: () {
                            setState(() {
                              _isExpanded = !_isExpanded;
                            });
                          },
                          constraints: const BoxConstraints.tightFor(
                              width: 50.0, height: 50.0),
                          elevation: 0.0,
                          shape: const CircleBorder(),
                          padding: const EdgeInsets.all(0.0),
                          child: Icon(
                            !_isExpanded
                                ? Icons.expand_more_rounded
                                : Icons.expand_less_rounded,
                            color: cVeryLightGreyColor,
                            size: 45.0,
                          ),
                        ),
                      ),
                      const CustomBookNowButton(),
                    ],
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
