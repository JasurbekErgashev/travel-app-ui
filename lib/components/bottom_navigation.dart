import 'package:flutter/material.dart';

import '../components/bottom_navigation_tab.dart';
import '../constants/icons.dart';

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
                : InactiveBottomNavigationItem(
                    CustomIcons.home, () => Navigator.pushNamed(context, '/')),
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
