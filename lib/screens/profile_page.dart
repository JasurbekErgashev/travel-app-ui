import 'package:flutter/material.dart';

import '../components/floating_action_button.dart';
import '../components/bottom_navigation.dart';
import '../constants.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: cScaffoldBackgroundColor,
      body: Center(
        child: Text('Profile Page'),
      ),
      bottomNavigationBar: CustomBottomNavigationBar('profile'),
      floatingActionButton: CustomFloatingActionButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
