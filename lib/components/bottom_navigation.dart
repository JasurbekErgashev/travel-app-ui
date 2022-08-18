import 'package:flutter/material.dart';

import '../constants/icons.dart';
import '../constants/colors.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar(this.currentPage, {Key? key})
      : super(key: key);
  final String currentPage;
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.white,
      shape: const CircularNotchedRectangle(),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.1,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            currentPage == 'home'
                ? const ActiveBottomNavigationItem(CustomIcons.home)
                : InactiveBottomNavigationItem(CustomIcons.home,
                    () => Navigator.pushNamed(context, '/home')),
            currentPage == 'booking'
                ? const ActiveBottomNavigationItem(CustomIcons.bookmark)
                : InactiveBottomNavigationItem(CustomIcons.bookmark,
                    () => Navigator.pushNamed(context, '/booking')),
            const SizedBox.shrink(),
            currentPage == 'info'
                ? const ActiveBottomNavigationItem(CustomIcons.note)
                : InactiveBottomNavigationItem(CustomIcons.note,
                    () => Navigator.pushNamed(context, '/info')),
            currentPage == 'profile'
                ? const ActiveBottomNavigationItem(CustomIcons.user)
                : InactiveBottomNavigationItem(CustomIcons.user,
                    () => Navigator.pushNamed(context, '/profile')),
          ],
        ),
      ),
    );
  }
}

class InactiveBottomNavigationItem extends StatelessWidget {
  const InactiveBottomNavigationItem(this.iconPath, this.navigationHandler,
      {Key? key})
      : super(key: key);

  final String iconPath;
  final VoidCallback navigationHandler;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: navigationHandler,
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.075,
        height: MediaQuery.of(context).size.height * 0.05,
        child: Image.asset(
          iconPath,
          color: cVeryLightGreyColor,
        ),
      ),
    );
  }
}

class ActiveBottomNavigationItem extends StatelessWidget {
  const ActiveBottomNavigationItem(this.iconPath, {Key? key}) : super(key: key);

  final String iconPath;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.05,
          width: MediaQuery.of(context).size.width * 0.075,
          child: Image.asset(iconPath, color: cdarkBlackColor),
        ),
        Container(
          height: 5.0,
          width: 5.0,
          decoration: const BoxDecoration(
            color: cdarkBlackColor,
            shape: BoxShape.circle,
          ),
        ),
      ],
    );
  }
}
