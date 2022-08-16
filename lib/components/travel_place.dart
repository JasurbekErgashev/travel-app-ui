import 'package:flutter/material.dart';

import '../constants/data.dart';
import '../constants/shadows.dart';
import '../constants/colors.dart';
import '../constants/icons.dart';

import '../components/custom_widgets.dart';

import '../models/details_page_args.dart';

class CustomTravelPlace extends StatelessWidget {
  const CustomTravelPlace(
      {Key? key, required this.index, required this.categoryTracker})
      : super(key: key);
  final int index;
  final int categoryTracker;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        right: index !=
                (cDummyDataSet[0]['places'] as List<Map<String, Object>>)
                        .length -
                    1
            ? 20.0
            : 0.0,
      ),
      padding: const EdgeInsets.all(10.0),
      width: 300.0,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30.0),
        boxShadow: cCommonBoxShadow,
      ),
      child: Column(
        children: [
          Expanded(
            flex: 2,
            child: Hero(
              tag: 'cardImage$index',
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    '/details',
                    arguments: DetailsPageArgs(
                      index,
                      cDummyDataSet[categoryTracker]['places'][index]
                          ['placeName'],
                      cDummyDataSet[categoryTracker]['places'][index]
                          ['imagePath'],
                      cDummyDataSet[categoryTracker]['places'][index]
                          ['location'],
                      cDummyDataSet[categoryTracker]['places'][index]['price'],
                      cDummyDataSet[categoryTracker]['places'][index]
                          ['distance'],
                      cDummyDataSet[categoryTracker]['places'][index]
                          ['ratings'],
                      cDummyDataSet[categoryTracker]['places'][index]
                          ['description'],
                    ),
                  );
                },
                child: Container(
                  width: double.infinity,
                  alignment: Alignment.topRight,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    image: DecorationImage(
                      image: AssetImage(cDummyDataSet[categoryTracker]['places']
                          [index]['imagePath'][0]),
                      fit: BoxFit.cover,
                    ),
                    boxShadow: cTravelPlacesImageBoxShadow,
                  ),
                  child: Container(
                    margin: const EdgeInsets.all(12.5),
                    child: RawMaterialButton(
                      onPressed: () {},
                      constraints: const BoxConstraints.tightFor(
                          width: 50.0, height: 50.0),
                      shape: const CircleBorder(),
                      fillColor: cGreyLikeBackgroundColor,
                      elevation: 0.0,
                      padding: const EdgeInsets.all(10.0),
                      child:
                          Image.asset(CustomIcons.heart, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding:
                  const EdgeInsets.only(top: 15.0, left: 15.0, right: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  EachTravelPlaceInfo(
                    index: index,
                    categoryTracker: categoryTracker,
                  ),
                  const CustomProfilesWidget(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
