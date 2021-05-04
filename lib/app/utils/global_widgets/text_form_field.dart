import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SeChallengeTextFormField extends StatelessWidget {
  final TextEditingController controller;
  final TextInputType keyboardType;
  final Icon icon;
  final Color colorIcon;
  final String hintText;
  final Color borderColor;
  final Icon suffixIcon;
  final dynamic suffixIconPress;

  SeChallengeTextFormField(
      {@required this.hintText,
      @required this.borderColor,
      @required this.colorIcon,
      @required this.icon,
      @required this.keyboardType,
      @required this.controller,
      @required this.suffixIcon,
      @required this.suffixIconPress});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.all(3.0),
        child: TextFormField(
          keyboardType: this.keyboardType,
          controller: this.controller,
          style: TextStyle(
              color: Color.fromRGBO(59, 75, 105, 1.0),
              fontWeight: FontWeight.w500),
          decoration: InputDecoration(
            hintStyle: TextStyle(color: Color.fromRGBO(160, 169, 186, 1.0)),
            prefixIcon: Padding(
              padding: EdgeInsets.fromLTRB(0, 10, 10, 10),
              child: this.icon,
            ),
            suffixIcon: TextButton(
              onPressed: this.suffixIconPress,
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: this.suffixIcon,
              ),
            ),
            hintText: this.hintText,
            border: InputBorder.none,
          ),
        ),
      ),
      height: 55,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(
          color: this.borderColor,
          width: 1,
        ),
      ),
    );
  }
}
