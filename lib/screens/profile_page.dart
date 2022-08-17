import 'package:flutter/material.dart';

import '../components/custom_widgets.dart';
import '../components/bottom_navigation.dart';

import '../constants/colors.dart';
import '../constants/data.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cScaffoldBackgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Profile',
          style: TextStyle(color: cdarkBlackColor),
        ),
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            margin: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                const SizedBox(height: 25.0),
                Row(
                  children: [
                    Container(
                      width: 100.0,
                      height: 100.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        image: const DecorationImage(
                          image: NetworkImage(
                              'https://img.freepik.com/free-photo/waist-up-portrait-handsome-serious-unshaven-male-keeps-hands-together-dressed-dark-blue-shirt-has-talk-with-interlocutor-stands-against-white-wall-self-confident-man-freelancer_273609-16320.jpg?w=996&t=st=1660745228~exp=1660745828~hmac=e44490d0bdfd71badbf3b91544cff0533ad43cf8b6c6bcb30d51a2b46a6d55ef'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(width: 25.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Moaz',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16.0),
                        ),
                        SizedBox(height: 5.0),
                        Text(
                          'dev.moaz@gmail.com',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 25.0),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.55,
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(vertical: 5.0),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20.0),
                              border: Border.all(
                                  color: Colors.grey.shade200, width: 0.75),
                            ),
                            child: ListTile(
                              title: Text(
                                profilePageInfo[index],
                                style: const TextStyle(
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              leading: Container(
                                width: 45.0,
                                height: 45.0,
                                decoration: BoxDecoration(
                                  color: const Color(0x55E59E8B),
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                child: Icon(
                                  profilePageIcons[index],
                                  color: const Color(0xDDe85c45),
                                  size: 30.0,
                                ),
                              ),
                              trailing: IconButton(
                                onPressed: () {},
                                icon:
                                    const Icon(Icons.arrow_forward_ios_rounded),
                              ),
                            ),
                          ),
                          const SizedBox(height: 20.0),
                        ],
                      );
                    },
                    itemCount: profilePageInfo.length,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: const CustomBottomNavigationBar('profile'),
      floatingActionButton: const CustomFloatingActionButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
