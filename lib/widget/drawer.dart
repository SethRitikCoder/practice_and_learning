import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:make_app/ulities/text.dart';

class MyDrawer extends StatelessWidget {
  final imageurl = "lib/images/Ritik_Seth.jpeg";
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.deepPurpleAccent.shade100,
        child: ListView(
          padding: EdgeInsets.all(0),

          children: [
            DrawerHeader(
              padding: EdgeInsetsGeometry.zero,
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 158, 127, 243),
                ),
                margin: EdgeInsets.all(0),
                accountName: textdef(
                  "Ritik Seth",
                  22,
                  color: Colors.white,
                  weight: FontWeight.bold,
                ),
                accountEmail: textdef(
                  "RitikSeth22@gmail.com",
                  15,
                  color: Colors.white,
                  weight: FontWeight.bold,
                ),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage(imageurl),
                ),
                //Image.asset(imageurl),
              ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.home, color: Colors.white),
              title: textdef(
                "Home",
                20,
                color: Colors.white,
                weight: FontWeight.bold,
              ),
            ),
            //Divider(),
            ListTile(
              leading: Icon(CupertinoIcons.settings, color: Colors.white),
              title: textdef(
                "Setting",
                20,
                color: Colors.white,
                weight: FontWeight.bold,
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
              ),
              title: textdef(
                "Profile",
                20,
                color: Colors.white,
                weight: FontWeight.bold,
              ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.star_fill, color: Colors.white),
              title: textdef(
                "Starred",
                20,
                color: Colors.white,
                weight: FontWeight.bold,
              ),
            ),
            ListTile(
              leading: Icon(Icons.file_upload, color: Colors.white),
              title: textdef(
                "Uploads",
                20,
                color: Colors.white,
                weight: FontWeight.bold,
              ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.trash_fill, color: Colors.white),
              title: textdef(
                "Trash",
                20,
                color: Colors.white,
                weight: FontWeight.bold,
              ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.person_2_alt, color: Colors.white),
              title: textdef(
                "Shared with me",
                20,
                color: Colors.white,
                weight: FontWeight.bold,
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, "login");
              },
              leading: Icon(CupertinoIcons.person, color: Colors.white),
              title: textdef(
                "About Developer",
                20,
                color: Colors.white,
                weight: FontWeight.bold,
              ),
            ),
            AboutListTile(
              icon: Icon(CupertinoIcons.info, color: Colors.white),
              applicationName: "Flutter Drawer App",
              applicationVersion: "1.0.0",
              applicationLegalese: "© 2024 Ritik Seth",
              applicationIcon: CircleAvatar(
                backgroundImage: AssetImage(imageurl),
              ),

              child: textdef(
                "About App",
                20,
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
