import 'package:flutter/material.dart';

import '../models/details_page_args.dart';
import '../components/floating_action_button.dart';
import '../components/bottom_navigation.dart';
import '../components/custom_menu.dart';
import '../components/custom_notifications_bell.dart';
import '../components/custom_widgets.dart';
import '../constants.dart';

import '../constants/colors.dart';
import '../constants/icons.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
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
                      return Container(
                        width: 140.0,
                        margin: EdgeInsets.only(
                          right: index != cDummyDataSet.length - 1 ? 20.0 : 0.0,
                        ),
                        padding: const EdgeInsets.all(5.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          gradient: index == 0
                              ? const LinearGradient(
                                  colors: [
                                    cLightReddishColor,
                                    cDarkReddishColor
                                  ],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                )
                              : const LinearGradient(
                                  colors: [
                                    Colors.white,
                                    Colors.white,
                                  ],
                                ),
                          boxShadow: cDefaultCardBoxShadow,
                        ),
                        child: Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(5.0),
                              decoration: BoxDecoration(
                                color: index == 0
                                    ? Colors.white
                                    : cScaffoldBackgroundColor,
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              child: Image.asset(cDummyDataSet[index]
                                  ['iconImagePath'] as String),
                            ),
                            const SizedBox(
                              width: 20.0,
                            ),
                            Text(
                              cDummyDataSet[index]['sectionName'] as String,
                              style: subHeadingTextStyle(index),
                            ),
                          ],
                        ),
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
                        margin: customCardConditionalMargin(index),
                        padding: const EdgeInsets.all(10.0),
                        width: 300.0,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30.0),
                          boxShadow: cDefaultCardBoxShadow,
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
                                        cDummyDataSet[0]['places'][index]
                                            ['placeName'],
                                        cDummyDataSet[0]['places'][index]
                                            ['imagePath'],
                                        cDummyDataSet[0]['places'][index]
                                            ['location'],
                                        cDummyDataSet[0]['places'][index]
                                            ['price'],
                                        cDummyDataSet[0]['places'][index]
                                            ['distance'],
                                        cDummyDataSet[0]['places'][index]
                                            ['ratings'],
                                        cDummyDataSet[0]['places'][index]
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
                                        image: AssetImage(cDummyDataSet[0]
                                            ['places'][index]['imagePath'][0]),
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
                                          cDummyDataSet[0]['places'][index]
                                              ['placeName'],
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
                                            Text(
                                              cDummyDataSet[0]['places'][index]
                                                  ['location'],
                                              style: cMainCardLocationTextStyle,
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
                    itemCount: (cDummyDataSet[0]['places']
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
