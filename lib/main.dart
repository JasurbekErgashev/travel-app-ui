import 'package:flutter/material.dart';

import './screens/home_page.dart';
import './screens/booking_page.dart';
import './screens/info_page.dart';
import 'screens/profile_page.dart';
import './screens/details_page.dart';
import './models/details_page_args.dart';

void main() => runApp(const TravelApp());

class TravelApp extends StatelessWidget {
  const TravelApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Travel App',
      onGenerateRoute: (settings) {
        if (settings.name == '/booking') {
          return PageRouteBuilder(
              pageBuilder: (_, __, ___) => const BookingPage());
        }
        if (settings.name == '/') {
          return PageRouteBuilder(
              pageBuilder: (_, __, ___) => const HomePage());
        }
        if (settings.name == '/info') {
          return PageRouteBuilder(
              pageBuilder: (_, __, ___) => const InfoPage());
        }
        if (settings.name == '/profile') {
          return PageRouteBuilder(
              pageBuilder: (_, __, ___) => const ProfilePage());
        }
        if (settings.name == '/details') {
          final args = settings.arguments as DetailsPageArgs;
          return PageRouteBuilder(
            pageBuilder: (_, __, ___) => DetailsPage(
              index: args.index,
              description: args.description,
              distance: args.distance,
              imagePaths: args.imagePaths,
              location: args.location,
              placeName: args.placeName,
              price: args.price,
              ratings: args.ratings,
            ),
          );
        }
        return null;
      },
      initialRoute: '/',
      routes: const {
        // '/': (context) => const HomePage(),
        // '/booking': (context) => const BookingPage(),
        // '/info': (context) => const InfoPage(),
        // '/profile': (context) => const ProfilePage(),
        //'/details': (context) => DetailsPage(int index),
      },
    );
  }
}
