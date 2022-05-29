import 'package:flutter/material.dart';
import '../Utilities/constant.dart';

class PopularRestarunt extends StatelessWidget {
  const PopularRestarunt({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      height:MediaQuery.of(context).size.height/3,
      width: MediaQuery.of(context).size.width/1.75,
      decoration: BoxDecoration(color: Color.fromRGBO(175, 175, 175, 0.10196078431372549),
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(50),
        ),

      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(25),),
            child: Image.asset(kpath+"restarunt1.jpg",fit:
            BoxFit.fill,),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 5
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Panshi IN", style: ktext16_500_blue,),
                SizedBox(height: 5,),
                Text("25 Recipies Avaliable",style:
                ktext14_400_blue,)

              ],
            ),
          ),
        ],
      ),
    );
  }
}
