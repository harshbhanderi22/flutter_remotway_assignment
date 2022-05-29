import 'package:flutter/material.dart';
import 'package:remotway_login_assignment/Widget/round_rectangle_photo.dart';
import '../Utilities/constant.dart';

class RestaurantContainer extends StatelessWidget {

  RestaurantContainer({required this.RName,required this.RAddress,required
  this.prefiximage, required this.suffiximage});

  final String RName;
  final String RAddress;
  final String prefiximage;
  final String suffiximage;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height/10,
      decoration: BoxDecoration(
          color: Color.fromRGBO(175, 175, 175, 0.10196078431372549),
          borderRadius: BorderRadius.circular(15)
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Row(
                children: [
                  RoundRectangePhoto(
                    photoname: "$prefiximage",
                  ),
                  SizedBox(width:10,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("$RName", style:
                      ktext16_500_blue,),
                      Text("$RAddress",
                          style: ktext14_400_blue)
                    ],
                  ),
                ],
              ),
            ),
            Image.asset(kpath+"$suffiximage",
            height: MediaQuery.of(context).size.height/15,
            width: MediaQuery.of(context).size.width/15,
            )
          ],
        ),
      ),
    );
  }
}
