import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_page_controller.dart';

class HomePageView extends GetView<HomePageController> {
  const HomePageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomePageView'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              showModalBottomSheet<void>(
                isScrollControlled: true,
                context: context,
                builder: (BuildContext context) {
                  return Container(
                    height: 730, // Adjust the height as needed
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.vertical(
                        bottom: Radius.circular(20)
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        const SizedBox(
                          height: 15,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(50)),
                          width: 70,
                          height: 12,
                        ),
                        ListTile(
                          leading: const Icon(Icons.settings),
                          title: const Text('Setting and Privacy'),
                          onTap: () {
                            Navigator.pop(context); // Close the bottom sheet
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //     builder: (context) =>
                            //         const SettingsPrivacyScreen(),
                            //   ),
                            // );
                          },
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 55),
                          child: Divider(),
                        ),
                        const ListTile(
                          leading: Icon(Icons.rotate_left_outlined),
                          title: Text('Your Activaty'),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 55),
                          child: Divider(),
                        ),
                        const ListTile(
                          leading: Icon(Icons.qr_code_scanner_outlined),
                          title: Text('QR code'),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 55),
                          child: Divider(),
                        ),
                        const ListTile(
                          leading: Icon(Icons.bookmark_border),
                          title: Text('Save'),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 55),
                          child: Divider(),
                        ),
                        const ListTile(
                          leading: Icon(Icons.card_membership),
                          title: Text('Card Membership'),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 55),
                          child: Divider(),
                        ),
                        const ListTile(
                          leading: Icon(Icons.star_border_rounded),
                          title: Text('Favorites'),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 55),
                          child: Divider(),
                        ),
                        const ListTile(
                          leading: Icon(Icons.star_border_rounded),
                          title: Text('Favorites'),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 55),
                          child: Divider(),
                        ),
                        const ListTile(
                          leading: Icon(Icons.login_outlined),
                          title: Text(
                            'Logout',
                            style: TextStyle(color: Colors.redAccent),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 55),
                          child: Divider(),
                        ),
                        ListTile(
                          leading: const Icon(
                            Icons.close,
                            color: Colors.green,
                          ),
                          title: const Text('Close'),
                          onTap: () => Navigator.pop(context),
                        ),
                      ],
                    ),
                  );
                },
              );
            },
            icon: const Icon(
              Icons.menu,
            ),
          ),
        ],
      ),
      body: const Center(
        child:  Scaffold(
          backgroundColor: Colors.blue,
        )

      ),
    );
  }
}
