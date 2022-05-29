import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:remotway_login_assignment/Screen/home_screen.dart';
import 'package:remotway_login_assignment/Screen/sign_in.dart';
import 'package:remotway_login_assignment/Screen/sign_up.dart';
import 'package:remotway_login_assignment/Utilities/constant.dart';
import 'package:remotway_login_assignment/google_sign_in.dart';

import '../Widget/sing_in_buttons.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 15,
              ),
              Center(
                child: Image.asset(
                  kpath + "man_with_basket.png",
                  height: MediaQuery.of(context).size.height/2.5,
                  width: MediaQuery.of(context).size.width/1.5,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Quick Food Delivery",
                style: ktext20_600,
              ),
              Padding(
                padding:
                      EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width/7,
                        vertical: MediaQuery.of(context).size.height/30),
                child: Container(
                  child: Text(
                    "Loved the class! Such beautiful land and "
                    "collective impact infrastructure social entrepreneur.",
                    style: ktext14_400_blue,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height/40,
              ),
              SignInButtons(
                label: "Sign in Gogole",
                onTap: () {
                  final provider=Provider.of<GoogleSingInProivder>(context,
                      listen: false);
                  provider.GooogleLogIn();
                  
                },
                backgroundcolor: ksignincolor,
              ),
              SizedBox(
                height: 20,
              ),
              SignInButtons(
                  label: "Sign Up",
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return SignUp();
                    }));
                  },
                  backgroundcolor: ksignupcolor
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height/50,
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Or Start to ",style: ktext14_400_blue,),
                    Text("Search Now",
                    style: ktext14_400_red,)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
