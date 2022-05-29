import 'dart:ffi';

import 'package:flutter/material.dart';
import '../Utilities/constant.dart';

class InputFormFields extends StatelessWidget {

  InputFormFields({required this.heading,required this
      .intialvalue,required this.obscureText, required this.hint});
  final String heading;
  final bool obscureText;
  final String intialvalue;
  final String hint;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "$heading",
          style: ktext14_400_blue,
        ),
        SizedBox(
          height: 10,
        ),
        TextFormField(
          obscureText: obscureText,
          initialValue: "$intialvalue",
          decoration: InputDecoration(
            hintText: "$hint",
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey, width: 1.5),
              borderRadius: BorderRadius.circular(15.0),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey, width: 1.5),
              borderRadius: BorderRadius.circular(15.0),
            ),
          ),
          validator: (value) {
          },
        ),
      ],
    );
  }
}