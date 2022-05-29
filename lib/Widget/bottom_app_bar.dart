import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:remotway_login_assignment/Utilities/constant.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  @override
  Widget build(BuildContext context) {
    return ConvexAppBar(
      backgroundColor: Colors.white,
       top: -30,
       curveSize: 100,
       height: MediaQuery.of(context).size.height/12,
       color: Colors.grey,
      activeColor: Color.fromRGBO(254, 114, 76, 1),
      items: [
        TabItem(icon: FontAwesomeIcons.house, title:
        'Home',),
        TabItem(icon: FontAwesomeIcons.magnifyingGlass, title: 'Search'),
        TabItem(icon: FontAwesomeIcons.cartShopping, title: 'Cart'),
        TabItem(icon: FontAwesomeIcons.sheetPlastic, title: 'Order'),
        TabItem(icon: FontAwesomeIcons.person, title: 'Account'),
      ],
      initialActiveIndex: 2,//optional, default as 0
      onTap: (int i) => print('click index=$i'),
    );
  }
}
