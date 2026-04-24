import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:make_app/ulities/text.dart';

class MyDrawerer extends StatelessWidget {
  final imageurl = "lib/images/Ritik_Seth.jpeg";
  const MyDrawerer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.deepPurple.shade300,
      child: Container(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.deepPurple.shade300),
              accountName: textdef("Ritik Kumar Seth", 20),
              accountEmail: textdef("RitikSeth2222@gmail.com", 15),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage(imageurl),
                
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                size: 30,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              title: textdef(
                "Home",
                22,
                color: Colors.white,
                weight: FontWeight.bold,
              ),
            ),

            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                size: 30,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              title: textdef(
                "Profile",
                22,
                color: Colors.white,
                weight: FontWeight.bold,
              ),
            ),

            ListTile(
              leading: Icon(
                CupertinoIcons.star_fill,
                size: 30,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              title: textdef(
                "Starred",
                22,
                color: Colors.white,
                weight: FontWeight.bold,
              ),
            ),

            ListTile(
              leading: Icon(
                CupertinoIcons.person_2_alt,
                size: 30,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              title: textdef(
                "Shared With Other",
                22,
                color: Colors.white,
                weight: FontWeight.bold,
              ),
            ),

            ListTile(
              leading: Icon(
                CupertinoIcons.cloud_upload,
                size: 30,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              title: textdef(
                "Cloud Upload",
                22,
                color: Colors.white,
                weight: FontWeight.bold,
              ),
            ),

            ListTile(
              leading: Icon(
                CupertinoIcons.trash_circle,
                size: 30,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              title: textdef(
                "Trash",
                22,
                color: Colors.white,
                weight: FontWeight.bold,
              ),
            ),

            ListTile(
              leading: Icon(
                CupertinoIcons.calendar_badge_plus,
                size: 30,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              title: textdef(
                "Select date for appointment",
                22,
                color: Colors.white,
                weight: FontWeight.bold,
              ),
            ),

            ListTile(
              leading: Icon(
                CupertinoIcons.person,
                size: 30,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              title: textdef(
                "About Developer",
                22,
                color: Colors.white,
                weight: FontWeight.bold,
              ),
            ),

            AboutListTile(
              applicationIcon: CircleAvatar(
                backgroundImage: AssetImage(imageurl),
              ),
              applicationName: "Drawer app Demo",
              applicationLegalese: "@ 2026 Ritik seth",
              applicationVersion: "1.0.0",
              icon: Icon(CupertinoIcons.info, color: Colors.white),
              dense: true,
              child: textdef(
                "About App",
                22,
                color: Colors.white,
                weight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
