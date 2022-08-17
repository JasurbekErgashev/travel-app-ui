import 'package:flutter/material.dart';

import '../components/bottom_navigation.dart';
import '../components/custom_widgets.dart';
import '../components/categories.dart';
import '../components/travel_place.dart';
import '../components/sidenavbar.dart';

import '../constants/constants.dart';
import '../constants/data.dart';
import '../constants/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  int _categoryTracker = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: const SideNavBar(),
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
                  children: [
                    CustomMenu(
                      tabHandler: () => _scaffoldKey.currentState?.openDrawer(),
                    ),
                    const CustomNotificationsIcon(),
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
                      return CustomTravelPlace(
                          index: index, categoryTracker: _categoryTracker);
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
