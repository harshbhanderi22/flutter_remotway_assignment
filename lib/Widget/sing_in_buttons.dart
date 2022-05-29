import 'package:flutter/material.dart';
import '../Utilities/constant.dart';

class SignInButtons extends StatelessWidget {

  SignInButtons({required this.label,required this.onTap,required this.backgroundcolor});

  late final String label;
  late final Function onTap;
  late final Color backgroundcolor;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: (){
        onTap();
      },
      child: Container(
        height: MediaQuery.of(context).size.height/13,
        width: MediaQuery.of(context).size.width-60,
        decoration: BoxDecoration(
          color: backgroundcolor,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Center(
          child: Text("$label",style: ktext14_600_white,),

        ),
      ),
    );
  }


}