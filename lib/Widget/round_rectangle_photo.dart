import 'package:flutter/material.dart';
import '../Utilities/constant.dart';

class RoundRectangePhoto extends StatelessWidget {
  RoundRectangePhoto({required this.photoname});

  final String photoname;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15)
      ),
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Image.asset(kpath+"$photoname",
          height: MediaQuery.of(context).size.height/5,
          width: MediaQuery.of(context).size.width/7,
        ),
      ),
    );
  }
}
