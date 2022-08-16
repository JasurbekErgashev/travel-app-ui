import 'package:flutter/material.dart';

import './screens/home_page.dart';
import './screens/booking_page.dart';
import './screens/info_page.dart';
import './screens/profile_page.dart';
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
      theme: ThemeData(
        fontFamily: 'Montserrat',
      ),
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case '/':
            return PageRouteBuilder(
              pageBuilder: (_, __, ___) => const HomePage(),
            );
          case '/booking':
            return PageRouteBuilder(
              pageBuilder: (_, __, ___) => const BookingPage(),
            );
          case '/info':
            return PageRouteBuilder(
              pageBuilder: (_, __, ___) => const InfoPage(),
            );
          case '/profile':
            return PageRouteBuilder(
              pageBuilder: (_, __, ___) => const ProfilePage(),
            );
          case '/details':
            final args = settings.arguments as DetailsPageArgs;
            return PageRouteBuilder(
              pageBuilder: (_, __, ___) => DetailsPage(
                index: args.index,
                placeName: args.placeName,
                imagePaths: args.imagePaths,
                location: args.location,
                price: args.price,
                distance: args.distance,
                ratings: args.ratings,
                description: args.description,
              ),
            );
          default:
            return null;
        }
      },
      initialRoute: '/',
      routes: const {},
    );
  }
}
