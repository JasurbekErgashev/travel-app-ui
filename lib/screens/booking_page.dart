import 'package:flutter/material.dart';

import '../components/floating_action_button.dart';
import '../components/bottom_navigation.dart';
import '../constants.dart';

class BookingPage extends StatelessWidget {
  const BookingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: cScaffoldBackgroundColor,
      body: Center(
        child: Text('Booking Page'),
      ),
      bottomNavigationBar: CustomBottomNavigationBar('booking'),
      floatingActionButton: CustomFloatingActionButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
