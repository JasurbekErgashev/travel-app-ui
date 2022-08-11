import 'package:flutter/material.dart';

import '../components/bottom_navigation_tab.dart';
import '../constants.dart';

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
                ? ActiveBottomNavigationItem(cIconPaths['home'] as String)
                : InactiveBottomNavigationItem(cIconPaths['home'] as String,
                    () => Navigator.pushNamed(context, '/')),
            currentPage == 'booking'
                ? ActiveBottomNavigationItem(cIconPaths['bookmark'] as String)
                : InactiveBottomNavigationItem(cIconPaths['bookmark'] as String,
                    () => Navigator.pushNamed(context, '/booking')),
            const SizedBox.shrink(),
            currentPage == 'info'
                ? ActiveBottomNavigationItem(cIconPaths['note'] as String)
                : InactiveBottomNavigationItem(cIconPaths['note'] as String,
                    () => Navigator.pushNamed(context, '/info')),
            currentPage == 'profile'
                ? ActiveBottomNavigationItem(cIconPaths['user'] as String)
                : InactiveBottomNavigationItem(
                    cIconPaths['user'] as String,
                    (() => Navigator.pushNamed(context, '/profile')),
                  ),
          ],
        ),
      ),
    );
  }
}
