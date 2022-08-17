import 'package:flutter/material.dart';

import '../constants/gradients.dart';

class SideNavBar extends StatelessWidget {
  const SideNavBar({Key? key}) : super(key: key);

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
            trailing: Container(
              width: 25.0,
              height: 25.0,
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                gradient: cReddishGradientColor,
                shape: BoxShape.circle,
              ),
              child: const Text(
                '2',
                style: TextStyle(
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
