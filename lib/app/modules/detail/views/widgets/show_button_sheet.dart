 
import 'package:flutter/material.dart';
 
 



class ShowButtonSheet extends StatelessWidget {
  const ShowButtonSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        showModalBottomSheet<void>(
          isScrollControlled: true,
          context: context,
          shape: const RoundedRectangleBorder(
            side: BorderSide(
              color: Colors.white70,
            ),
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(22), // Customize this value
            ),
          ),
          backgroundColor: Colors.black87,
          builder: (BuildContext context) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const SizedBox(
                  height: 15,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  width: 70,
                  height: 12,
                ),
                ListTile(
                  leading: const Icon(
                    Icons.settings,
                    color: Colors.white,
                  ),
                  title: const Text(
                    'Setting and Privacy',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  onTap: () {
                    Navigator.pop(context); // Close the bottom sheet
                  },
                ),
                const Padding(
                padding: EdgeInsets.only(left: 55, right: 35),
                  child: Divider(
                    color: Colors.white,
                  ),
                ),
                const ListTile(
                  leading: Icon(
                    Icons.rotate_left_outlined,
                    color: Colors.white,
                  ),
                  title: Text(
                    'Your Activaty ',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 55,right: 35),
                  child: Divider(
                    color: Colors.white,
                  ),
                ),
                const ListTile(
                  leading: Icon(
                    Icons.qr_code_scanner_outlined,
                    color: Colors.white,
                  ),
                  title: Text(
                    'QR code',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                const Padding(
               padding: EdgeInsets.only(left: 55, right: 35),
                  child: Divider(
                    color: Colors.white,
                  ),
                ),
                const ListTile(
                  leading: Icon(
                    Icons.bookmark_border,
                    color: Colors.white,
                  ),
                  title: Text(
                    'Save',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                const Padding(
                padding: EdgeInsets.only(left: 55, right: 35),
                  child: Divider(
                    color: Colors.white,
                  ),
                ),
                const ListTile(
                  leading: Icon(
                    Icons.card_membership,
                    color: Colors.white,
                  ),
                  title: Text(
                    'Card Membership',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 55, right: 35),
                  child: Divider(
                    color: Colors.white,
                  ),
                ),
                const ListTile(
                  leading: Icon(
                    Icons.star_border_rounded,
                    color: Colors.white,
                  ),
                  title: Text(
                    'Favorites',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                const Padding(
                 padding: EdgeInsets.only(left: 55, right: 35),
                  child: Divider(
                    color: Colors.white,
                  ),
                ),
                const ListTile(
                  leading: Icon(
                    Icons.star_border_rounded,
                    color: Colors.white,
                  ),
                  title: Text(
                    'Favorites',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                const Padding(
                 padding: EdgeInsets.only(left: 55, right: 35),
                  child: Divider(
                    color: Colors.white,
                  ),
                ),
                const ListTile(
                  leading: Icon(
                    Icons.login_outlined,
                    color: Colors.white,
                  ),
                  title: Text(
                    'Logout',
                    style: TextStyle(color: Colors.redAccent),
                  ),
                ),
                const Padding(
                 padding: EdgeInsets.only(left: 55, right: 35),
                  child: Divider(
                    color: Colors.white,
                  ),
                ),
                ListTile(
                  leading: const Icon(
                    Icons.close,
                    color: Colors.green,
                  ),
                  title: const Text(
                    'Close',
                    style: TextStyle(color: Colors.white),
                  ),
                  onTap: () => Navigator.pop(context),
                ),
              ],
            );
          },
        );
      },
      icon: const Icon(
        Icons.menu,
        color: Colors.black,
      ),
    );
  }
}
