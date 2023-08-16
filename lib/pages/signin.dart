import 'package:basma_fuais_/components/signinupbutton.dart';
import 'package:basma_fuais_/components/textformfield.dart';
import 'package:basma_fuais_/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(children: [
          const SizedBox(
            height: 20,
          ),
          SvgPicture.asset(
            'assets/images/undraw.svg',
            width: 20,
            height: 200,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            'تسجيل الدخول',
            style: GoogleFonts.cairo(
                textStyle: const TextStyle(color: textColor, fontSize: 25)),
            textAlign: TextAlign.center,
          ),
          Text(
            'يرجى ادخال اسم المستخدم \nوكلمة السر للدخول الى النظام',
            style: GoogleFonts.cairo(
                textStyle: const TextStyle(color: greyColor, fontSize: 20)),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 30,
          ),
          const CustomTextFormField(
              labelText: 'اسم المستخدم', hintText: 'الرجاء ادخال اسم المتسخدم'),
          const SizedBox(
            height: 20,
          ),
          const CustomTextFormField(
              labelText: 'كلمة السر', hintText: '**** ****'),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'الان',
                style: GoogleFonts.cairo(
                    textStyle: const TextStyle(color: greyColor, fontSize: 20)),
              ),
              Text(
                'لديك حساب قم بإنشاء حساب ',
                style: GoogleFonts.cairo(
                    textStyle: const TextStyle(color: greyColor, fontSize: 20)),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          CustomButton(onClick: () {}, text: 'تسجيل الدخول')
        ]),
      ),
    );
  }
}
