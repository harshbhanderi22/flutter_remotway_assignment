import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:provider/provider.dart';
import 'package:remotway_login_assignment/Screen/home_screen.dart';
import 'package:remotway_login_assignment/Screen/sign_up.dart';
import 'package:remotway_login_assignment/Widget/sing_in_buttons.dart';

import '../Utilities/constant.dart';
import '../Widget/input_fields.dart';
import '../google_sign_in.dart';

class SignIn extends StatefulWidget {
  SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final _formkeysignin = GlobalKey<FormState>();
  String useremail="hellobesnik@gmail.com";
  String userpassword="hello1234";
  bool isChecked = true;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width / 10,
              vertical: MediaQuery.of(context).size.height / 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
             children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Text(
                  "Sign In",
                  style: ktext20_600,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Text(
                  "Complete this step for best adjustment",
                  style: ktext14_400_blue,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 20,
              ),
              Form(
                key: _formkeysignin,
                child: Column(
                  children: [
                    InputFormFields(
                      heading: "Your Email",
                      hint: "hellobesnik@gmail.com",
                      obscureText: false,
                      intialvalue: "hellobesnik@gmail.com",

                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 20,
                    ),
                    InputFormFields(
                      heading: "Your Password",
                      hint: "Password",
                      obscureText: true,
                      intialvalue: "hello1234",

                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      FlutterSwitch(
                        width: MediaQuery.of(context).size.width / 10,
                        height: MediaQuery.of(context).size.height / 40,
                        valueFontSize: 20.0,
                        toggleSize: 12.5,
                        value: isChecked,
                        borderRadius: 10.0,
                        padding: 2.0,
                        activeColor: Color.fromRGBO(254, 114, 76, 1),
                        showOnOff: false,
                        onToggle: (val) {
                          setState(() {
                            isChecked = val;
                          });
                        },
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Remember Me?",
                        style: ktext12_400_blue,
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: (){},
                    child: Text(
                      "Forgot Password?",
                      style: ktext14_400_darkblue,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 30,
              ),
              SignInButtons(
                  label: "Sign In",
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return HomePage();
                    }));
                  },
                  backgroundcolor: ksignupcolor
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 25,
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
                height: MediaQuery.of(context).size.height / 35,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("I Don't have a account?",style: ktext14_400_blue,),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return SignUp();
                      }));
                    },
                    child: Text(" Sign Up", style: ktext14_400_red,),
                  ),
                ],
              )

            ],
          ),
        ),
      ),
    );
  }
}
