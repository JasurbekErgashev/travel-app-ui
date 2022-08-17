import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../constants/gradients.dart';
import '../constants/data.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final devicePadding = MediaQuery.of(context).padding;
    final height = deviceHeight - (devicePadding.top + devicePadding.bottom);
    return Scaffold(
      backgroundColor: cScaffoldBackgroundColor,
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('Notifications'),
            const SizedBox(width: 10.0),
            Container(
              width: 20.0,
              height: 20.0,
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                gradient: cReddishGradientColor,
              ),
              child: const Text(
                '6',
                style: TextStyle(color: Colors.white, fontSize: 12.0),
              ),
            ),
          ],
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(CupertinoIcons.back),
        ),
        backgroundColor: Colors.white,
        foregroundColor: cdarkBlackColor,
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.all(20.0),
              child: const Text(
                'TODAY',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),
            ),
            SizedBox(
              height: height - 120.0,
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Container(
                    padding: const EdgeInsets.all(20.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border(
                        bottom:
                            BorderSide(color: Colors.grey.shade300, width: 0.5),
                      ),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            Container(
                              width: 75.0,
                              height: 75.0,
                              margin: const EdgeInsets.only(
                                  bottom: 10.0, right: 10.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                image: DecorationImage(
                                  image: AssetImage(notificationsData[index]
                                      ['imagePath'] as String),
                                ),
                              ),
                            ),
                            Container(
                              width: 30.0,
                              height: 30.0,
                              decoration: const BoxDecoration(
                                color: cdarkBlackColor,
                                shape: BoxShape.circle,
                              ),
                              child: const Icon(
                                Icons.percent,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(width: 15.0),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                notificationsData[index]['title'] as String,
                                style: const TextStyle(
                                  fontSize: 16.0,
                                  color: cdarkBlackColor,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 10.0),
                              Text(
                                notificationsData[index]['description']
                                    as String,
                                style: TextStyle(
                                  color: Colors.grey.shade600,
                                  fontSize: 16.0,
                                ),
                              ),
                              const SizedBox(height: 10.0),
                              Row(
                                children: [
                                  Container(
                                    width: 90.0,
                                    height: 30.0,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      color: cLightGreyColor,
                                      borderRadius: BorderRadius.circular(20.0),
                                    ),
                                    child: Text(
                                      notificationsData[index]['code']
                                          as String,
                                      style: const TextStyle(
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                  const SizedBox(width: 20.0),
                                  Text(
                                    notificationsData[index]['time'] as String,
                                    style:
                                        TextStyle(color: Colors.grey.shade600),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
                itemCount: notificationsData.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
