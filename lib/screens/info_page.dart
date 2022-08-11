import 'package:flutter/material.dart';

import '../components/floating_action_button.dart';
import '../components/bottom_navigation.dart';
import '../constants.dart';

class InfoPage extends StatelessWidget {
  const InfoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: cScaffoldBackgroundColor,
      body: Center(
        child: Text('Info Page'),
      ),
      bottomNavigationBar: CustomBottomNavigationBar('info'),
      floatingActionButton: CustomFloatingActionButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
