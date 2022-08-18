import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import './screens/home_page.dart';
import './screens/booking_page.dart';
import './screens/info_page.dart';
import './screens/profile_page.dart';
import './screens/details_page.dart';
import './screens/notifications_page.dart';
import './screens/onboarding_screen.dart';

import './models/details_page_args.dart';

import './components/custom_page_route.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = await SharedPreferences.getInstance();
  final showHome = prefs.getBool('showHome') ?? false;
  runApp(TravelApp(
    showHome: showHome,
  ));
}

class TravelApp extends StatelessWidget {
  const TravelApp({Key? key, required this.showHome}) : super(key: key);
  final bool showHome;
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
          case '/home':
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
                like: args.like,
              ),
            );
          case '/notifications':
            return CustomPageRoute(
              child: const NotificationsPage(),
              direction: AxisDirection.left,
            );
          case '/onboard':
            return PageRouteBuilder(
              pageBuilder: (_, __, ___) => const OnboardingScreen(),
            );
          default:
            return null;
        }
      },
      home: showHome ? const HomePage() : const OnboardingScreen(),
    );
  }
}
