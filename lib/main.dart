import 'package:flutter/material.dart';

import './screens/home_page.dart';
import './screens/booking_page.dart';
import './screens/info_page.dart';
import 'screens/profile_page.dart';
import './screens/details_page.dart';

void main() => runApp(const TravelApp());

class TravelApp extends StatelessWidget {
  const TravelApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Travel App',
      // onGenerateRoute: (settings) {
      //   if (settings.name == '/booking') {
      //     return PageRouteBuilder(
      //         pageBuilder: (_, __, ___) => const BookingPage());
      //   }
      //   if (settings.name == '/') {
      //     return PageRouteBuilder(
      //         pageBuilder: (_, __, ___) => const HomePage());
      //   }
      //   if (settings.name == '/info') {
      //     return PageRouteBuilder(
      //         pageBuilder: (_, __, ___) => const InfoPage());
      //   }
      //   if (settings.name == '/profile') {
      //     return PageRouteBuilder(
      //         pageBuilder: (_, __, ___) => const ProfilePage());
      //   }
      //   if (settings.name == '/details') {
      //     return PageRouteBuilder(
      //         pageBuilder: (_, __, ___) => const DetailsPage());
      //   }
      //   return null;
      // },
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/booking': (context) => const BookingPage(),
        '/info': (context) => const InfoPage(),
        '/profile': (context) => const ProfilePage(),
        '/details': (context) => const DetailsPage(),
      },
    );
  }
}
