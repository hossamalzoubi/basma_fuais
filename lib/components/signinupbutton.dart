import 'package:basma_fuais_/constant.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.onClick, required this.text});
  final VoidCallback onClick;
  final String text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onClick,
        style: ElevatedButton.styleFrom(
            backgroundColor: signInUpButtonColor,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
            minimumSize: const Size(double.infinity, 75)),
        child: Text(
          text,
          style: GoogleFonts.cairo(textStyle: const TextStyle(fontSize: 20)),
        ));
  }
}
