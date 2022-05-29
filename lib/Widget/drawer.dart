import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:remotway_login_assignment/Utilities/constant.dart';

import '../google_sign_in.dart';
class MyDrawer extends StatelessWidget {

  MyDrawer(this.gmail,this.name,this.url);
  final String gmail;
  final String name;
  final String url;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.purple,
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                  decoration: BoxDecoration(color: Colors.purple),
                  margin: EdgeInsets.zero,
                  accountName: Text(name),
                  accountEmail: Text("$gmail"),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(url),
                  )),
            ),
            DrawerEntry(FontAwesomeIcons.home, "Home"),
            DrawerEntry(CupertinoIcons.profile_circled, "Profile"),
            DrawerEntry(CupertinoIcons.phone, "Contact Us"),
            GestureDetector
              (
              onTap: (){
                final provider=Provider.of<GoogleSingInProivder>(context,
                    listen: false);
                provider.GoogleLogOut();
              },
                child: DrawerEntry(FontAwesomeIcons.lockOpen, "Log Out")
            ),
          ],
        ),
      ),
    );
  }
}

class DrawerEntry extends StatelessWidget {
  DrawerEntry(this.tiltIcon, this.title);

  final IconData tiltIcon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        tiltIcon,
        color: Colors.white,
      ),
      title: Text("$title", style: TextStyle(
          fontSize: 20.0,
          color: Colors.white
      ),
      ),
    );
  }
}
