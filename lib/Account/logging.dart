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
              text(context, "استمتع بالتواصل", 18, white),
//انشاء حساب--------------------------------------------------
              text(context, "انشاء حساب", 13, darkWhite),
              SizedBox(
                height: 22.h,
              ),
//==============================buttoms===============================================================

              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
//famus buttom-------------------------------------
                  gradientContainer(
                    102,
                    buttoms(
                      context,
                      'متابع',
                      12,
                      white,
                      () {
                        setState(() {
                          isChang = false;
                        });
                        print("fallower$isChang");
                      },
                    ),
                  ),
                  SizedBox(
                    width: 21.w,
                  ),
//follwer buttom-------------------------------------
                  solidContainer(
                      102,
                      transparent,
                      buttoms(context, 'مشهور', 12, white, () {
                        setState(() {
                          isChang = true;
                        });
                        print("famus$isChang");
                      })),
                ],
              ),

              SizedBox(
                height: 30.h,
              ),
//=============================================================================================
              padding(
                  33,
                  33,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
//====================================TextFields=========================================================

                      Form(child: isChang?userForm(context ,true) :userForm(context ,false)),
//====================================buttoms=========================================================
//create account------------------------------
                      gradientContainer(347,
                          buttoms(context, 'انشاء حساب', 14, white, () {})),
//singup with-----------------------------------------------------------
                      SizedBox(
                        height: 14.h,
                      ),
                      text(context, "او التسجيل من خلال", 9, darkWhite),
                      SizedBox(
                        height: 14.h,
                      ),
//googel buttom-----------------------------------------------------------
                      solidContainer(
                          347,
                          white,
                          singWthisButtom(context, "تسجيل دخول بجوجل", black,
                              white, () {}, googelImage)),
                      SizedBox(
                        height: 14.h,
                      ),
//facebook buttom-----------------------------------------------------------
                      solidContainer(
                          347,
                          darkBlue,
                          singWthisButtom(context, "تسجيل دخول فيسبوك", white,
                              darkBlue, () {}, facebookImage)),
                      SizedBox(
                        height: 27.h,
                      ),
//have Account buttom-----------------------------------------------------------
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Wrap(
                            children: [
                              text(context, "هل لديك حساب بالفعل؟", 11,
                                  darkWhite),
                              SizedBox(
                                width: 7.w,
                              ),
                              text(context, "تسجيل الدخول", 11, purple),
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

