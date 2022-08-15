import 'package:flutter/material.dart';

import '../models/details_page_args.dart';
import '../components/floating_action_button.dart';
import '../components/bottom_navigation.dart';
import '../components/custom_menu.dart';
import '../components/custom_notifications_bell.dart';
import '../components/custom_widgets.dart';
import '../components/categories.dart';
import '../constants.dart';

import '../constants/colors.dart';
import '../constants/icons.dart';
import '../constants/shadows.dart';
import '../constants/gradients.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _categoryTracker = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cScaffoldBackgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.all(25.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    CustomMenu(),
                    CustomNotificationsIcon(),
                  ],
                ),
                cDefaultHeight,
                const Text(
                  'Explore the',
                  style: cLightHeadingTextStyle,
                ),
                const Text(
                  'Beautiful world!',
                  style: cDarkHeadingTextStyle,
                ),
                cDefaultHeight,
                Row(
                  children: const [
                    CustomSearchBox(),
                    cDefaultWidth,
                    CustomPreferencesIcon(),
                  ],
                ),
                cDefaultHeight,
                const Text(
                  'Categories',
                  style: cSubheadingTextStyle,
                ),
                cDefaultHeight,
                SizedBox(
                  height: 60.0,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: ((context, index) {
                      return Categories(
                        index: index,
                        categoryTracker: _categoryTracker,
                        tabHandler: () {
                          setState(() {
                            _categoryTracker = index;
                          });
                        },
                      );
                    }),
                    itemCount: cDummyDataSet.length,
                  ),
                ),
                cDefaultHeight,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text('Travel Places', style: cSubheadingTextStyle),
                    ViewAllButton(),
                  ],
                ),
                cDefaultHeight,
                SizedBox(
                  height: 200.0,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: ((context, index) {
                      return Container(
                        margin: EdgeInsets.only(
                          right: index !=
                                  (cDummyDataSet[0]['places']
                                              as List<Map<String, Object>>)
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
                                        cDummyDataSet[_categoryTracker]
                                            ['places'][index]['placeName'],
                                        cDummyDataSet[_categoryTracker]
                                            ['places'][index]['imagePath'],
                                        cDummyDataSet[_categoryTracker]
                                            ['places'][index]['location'],
                                        cDummyDataSet[_categoryTracker]
                                            ['places'][index]['price'],
                                        cDummyDataSet[_categoryTracker]
                                            ['places'][index]['distance'],
                                        cDummyDataSet[_categoryTracker]
                                            ['places'][index]['ratings'],
                                        cDummyDataSet[_categoryTracker]
                                            ['places'][index]['description'],
                                      ),
                                    );
                                  },
                                  child: Container(
                                    width: double.infinity,
                                    alignment: Alignment.topRight,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30.0),
                                      image: DecorationImage(
                                        image: AssetImage(
                                            cDummyDataSet[_categoryTracker]
                                                    ['places'][index]
                                                ['imagePath'][0]),
                                        fit: BoxFit.cover,
                                      ),
                                      boxShadow: const [
                                        BoxShadow(
                                          color: cVeryLightGreyColor,
                                          spreadRadius: 1.0,
                                          blurRadius: 10.0,
                                          offset: Offset(1.0, 3.0),
                                        ),
                                      ],
                                    ),
                                    child: Container(
                                      width: 50.0,
                                      height: 50.0,
                                      margin: const EdgeInsets.all(12.5),
                                      padding: const EdgeInsets.all(10.0),
                                      decoration: const BoxDecoration(
                                        color: cGreyLikeBackgroundColor,
                                        shape: BoxShape.circle,
                                      ),
                                      child: Image.asset(
                                        CustomIcons.heart,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                padding: const EdgeInsets.only(
                                    top: 15.0, left: 15.0, right: 15.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          cDummyDataSet[_categoryTracker]
                                              ['places'][index]['placeName'],
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
                                                cDummyDataSet[_categoryTracker]
                                                        ['places'][index]
                                                    ['location'] as String,
                                                style:
                                                    cMainCardLocationTextStyle,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    const CustomProfilesWidget(),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
                    itemCount: (cDummyDataSet[_categoryTracker]['places']
                            as List<Map<String, Object>>)
                        .length,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: const CustomBottomNavigationBar('home'),
      floatingActionButton: const CustomFloatingActionButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
