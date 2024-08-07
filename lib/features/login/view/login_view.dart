import 'package:firstpay/core/utils/app_colors.dart';
import 'package:firstpay/features/login/Widget/Button.dart';
import 'package:firstpay/features/login/Widget/Text_filed_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height / 8,
              ),
              Align(
                alignment: Alignment.topRight,
                child: Text(
                  "تسجيل الدخول",
                  style: GoogleFonts.cairo(
                      fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Align(
                alignment: Alignment.topRight,
                child: Text(
                  "نشكر لك انضمامك إلى منصتنا الرائدة في تقديم حلول \nاشترِ الآن وادفع لاحقًا للشركات الصغيرة",
                  style: GoogleFonts.cairo(
                      fontSize: 15, fontWeight: FontWeight.w300),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 7,
              ),
              Align(
                alignment: Alignment.topRight,
                child: Text(
                  "البريد الاكتروني",
                  style: GoogleFonts.cairo(
                      fontSize: 16, fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              TextFiledWidget(
                hintext: 'ادخل الايميل او رقم الهوية هنا',
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Align(
                alignment: Alignment.topRight,
                child: Text(
                  "كلمة المرور",
                  style: GoogleFonts.cairo(
                      fontSize: 16, fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              TextFiledWidget(
                hintext: "ادخل كلمة المرور",
                isPassword: true,
              ),
              Align(
                alignment: Alignment.topRight,
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "نسيت كلمة المرور",
                      style: GoogleFonts.cairo(
                          color: AppColors.primaryColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    )),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 5,
              ),
              const MyButton(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "ليس لديك حساب?",
                    style: GoogleFonts.cairo(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w300),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/SignUp');
                    },
                    child: Text(
                      "انشاء حساب",
                      style: GoogleFonts.cairo(
                          color: AppColors.primaryColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
