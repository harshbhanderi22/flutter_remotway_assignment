import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:remotway_login_assignment/Screen/sign_in.dart';
import 'package:remotway_login_assignment/Widget/sing_in_buttons.dart';

import '../Utilities/constant.dart';
import '../Widget/input_fields.dart';

class SignUp extends StatefulWidget {
  SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _formkeysignup = GlobalKey<FormState>();

  bool isChecked = true;

  void moveToHome(BuildContext context) async {
    if (_formkeysignup.currentState!.validate()) {
      await Future.delayed(Duration(seconds: 1));
      await Navigator.push(context, MaterialPageRoute(builder: (context) {
        return SignIn();
      }));
    }
  }

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
                  "Sign Up",
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
                key: _formkeysignup,
                child: Column(
                  children: [
                    InputFormFields(
                      heading: "Your Email",
                      hint: "Email",
                      obscureText: false,
                      intialvalue: "hellobesnik@gmail.com",

                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 30,
                    ),
                    InputFormFields(
                      heading: "Your Password",
                      hint: "Password",
                      obscureText: true,
                      intialvalue: "besnik@1234",

                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 30,
                    ),
                    InputFormFields(
                      heading: "Mobile ",
                      hint: "Mobile No",
                      obscureText: false,
                      intialvalue: "+91 123456789",

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
                  label: "Sign Up",
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return SignIn();
                    }));
                  },
                  backgroundcolor: ksignupcolor
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("I already have a account?",style: ktext14_400_blue,),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return SignIn();
                      }));
                    },
                    child: Text(" Sign in", style: ktext14_400_red,),
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
