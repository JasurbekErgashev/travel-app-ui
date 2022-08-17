import 'package:flutter/material.dart';

import '../constants/gradients.dart';
import '../constants/data.dart';

class SideNavBar extends StatefulWidget {
  const SideNavBar({Key? key, required this.favorites}) : super(key: key);
  final List<Map<String, Object>> favorites;

  @override
  State<SideNavBar> createState() => _SideNavBarState();
}

class _SideNavBarState extends State<SideNavBar> {
  int get numFavorites {
    int n = 0;
    for (int i = 0; i < cDummyDataSet.length; i++) {
      for (int j = 0; j < cDummyDataSet[i]['places'].length; j++) {
        if (cDummyDataSet[i]['places'][j]['like']) {
          n++;
        }
      }
    }
    return n;
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: const EdgeInsets.all(0.0),
        children: [
          UserAccountsDrawerHeader(
            accountName: const Text(
              'Name Surname',
              style: TextStyle(color: Colors.black),
            ),
            accountEmail: const Text(
              'example@example.com',
              style: TextStyle(color: Colors.black),
            ),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.asset(
                  'assets/images/profiles/2.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.blueGrey[300],
              image: const DecorationImage(
                image: AssetImage('assets/images/profile_bg.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.favorite_rounded, size: 30.0),
            title: const Text('Favorites'),
            trailing: numFavorites == 0
                ? const Text('')
                : Container(
                    width: 25.0,
                    height: 25.0,
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                      gradient: cReddishGradientColor,
                      shape: BoxShape.circle,
                    ),
                    child: Text(
                      '$numFavorites',
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.people_rounded, size: 30.0),
            title: const Text('Friends'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.share_rounded, size: 30.0),
            title: const Text('Share'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.message_rounded, size: 30.0),
            title: const Text('Messages'),
            onTap: () {},
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.settings_rounded, size: 30.0),
            title: const Text('Settings'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.description_rounded, size: 30.0),
            title: const Text('Privacy & policy'),
            onTap: () {},
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.exit_to_app_rounded, size: 30.0),
            title: const Text('Exit'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
