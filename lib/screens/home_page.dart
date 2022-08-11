import 'package:flutter/material.dart';

import '../components/floating_action_button.dart';
import '../components/bottom_navigation.dart';
import '../components/custom_menu.dart';
import '../components/custom_notifications_bell.dart';
import '../components/custom_widgets.dart';
import '../constants.dart';

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
                    SizedBox(
                      width: 25.0,
                    ),
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
                          boxShadow: const [
                            BoxShadow(
                              color: cVeryLightGreyColor,
                              spreadRadius: -10.0,
                              blurRadius: 10.0,
                              offset: Offset(1.0, 3.0),
                            ),
                          ],
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
                              style: TextStyle(
                                color:
                                    index == 0 ? Colors.white : cdarkBlackColor,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w500,
                              ),
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
                  children: [
                    const Text('Travel Places', style: cSubheadingTextStyle),
                    Container(
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
                    ),
                  ],
                ),
                cDefaultHeight,
                Container(
                  height: 100.0,
                  child: ListView.builder(
                    itemBuilder: ((context, index) {
                      return Container(
                        width: 10.0,
                        color: Colors.red,
                      );
                    }),
                  ),
                ),
                Text('Jasurbek Ergashev'),
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
