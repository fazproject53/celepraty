import 'package:celepraty/Models/Methods/method.dart';
import 'package:celepraty/Models/Variabls/varaibles.dart';
import "package:flutter/material.dart";
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'UserForm.dart';

class Logging extends StatefulWidget {
  const Logging({Key? key}) : super(key: key);

  @override
  State<Logging> createState() => _LoggingState();
}

class _LoggingState extends State<Logging> {
  bool isChang = false;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
//main container--------------------------------------------------
          body: container(
        double.infinity,
        double.infinity,
        0,
        0,
        black,
//==============================container===============================================================

        SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 170.h),
//استمتع يالتواصل--------------------------------------------------
              text(context, "مرحبا بك مرة اخري", 18, white),
//انشاء حساب--------------------------------------------------
              text(context, "تسجيل الدخول", 13, darkWhite),
              SizedBox(
                height: 22.h,
              ),

//=============================================================================================
              padding(
                  20,
                  20,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
//====================================TextFields=========================================================

//email------------------------------------------
    textField(context, emailIcon, "البريد الالكتروني", 10, false,
        emailConttroller, (val) {}),
    SizedBox(
      height: 15.h,
    ),
//pass------------------------------------------
    textField(
        context, passIcon, "كلمة المرور", 10, false, passConttroller, (val) {}),
    SizedBox(
      height: 15.h,
    ),
//remember me && forget pass------------------------------------------
Row(
  children: [
    Icon(Icons.check_circle_rounded,color:ligthtBlack)
  ],
),
SizedBox(
      height: 15.h,
    ),
//logging buttom------------------------------
                      gradientContainer(347,
                          buttoms(context, 'تسجيل الدخول', 14, white, () {})),
                      SizedBox(
                        height: 34.h,
                      ),
//have Account buttom-----------------------------------------------------------
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Wrap(
                            children: [
                              text(context, "ليس لديك حساب بالفعل؟", 11,
                                  darkWhite),
                              SizedBox(
                                width: 7.w,
                              ),
                              text(context, "انشاء حساب", 11, purple),
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 27.h,
                      ),
//----------------------------------------------------------------------------------------------------------------------
                    ],
                  ))
            ],
          ),
        ),
      )),
    );
  }
}
