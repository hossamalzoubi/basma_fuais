import 'package:basma_fuais_/constant.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {super.key,
      required this.labelText,
      this.obscureText = false,
      required this.hintText});
  final String labelText;
  final String hintText;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: TextFormField(
          textAlign: TextAlign.right,
          obscureText: obscureText,
          decoration: InputDecoration(
              focusedBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                  borderSide: BorderSide(color: whiteColor, width: 1)),
              enabledBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                  borderSide: BorderSide(color: whiteColor, width: 1)),
              disabledBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                  borderSide: BorderSide(color: whiteColor, width: 1)),
              fillColor: textFormFieldColor,
              filled: true,
              labelText: labelText,
              hintText: hintText,
              hintStyle: const TextStyle(color: greyColor, fontSize: 15),
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
              labelStyle: const TextStyle(color: textColor, fontSize: 20))),
    );
  }
}
