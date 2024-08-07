import 'package:firstpay/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyButton extends StatelessWidget {
  const MyButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5,
      color: AppColors.primaryColor,
      borderRadius: BorderRadius.circular(100),
      child: MaterialButton(
        onPressed: () {},
        minWidth: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height / 19,
        child: Text(
          "تسجيل الدخول",
          style: GoogleFonts.cairo(
            color: Colors.white,
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
