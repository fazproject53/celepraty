//================ convert hex colors to rgb colors================
import 'package:celepraty/Models/Variabls/varaibles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:auto_size_text/auto_size_text.dart';

//convert HEX colors----------------------------------------------------------
Color hexToColor(String hexString, {alphaChannel = 'ff'}) {
  return Color(int.parse(hexString.replaceFirst('#', '0x$alphaChannel')));
}

//===============================Text===============================

Widget text(
  context,
  String key,
  double fontSize,
  Color color, {
  family = "Cairo",
  align = TextAlign.right,
  double space = 0,
  FontWeight fontWeight = FontWeight.normal,
}) {
  return Center(
    child: AutoSizeText.rich(
      TextSpan(
        text: key,
        style: TextStyle(
          color: color,
          fontFamily: family,
          fontSize: fontSize.sp,
          letterSpacing: space.sp,
          fontWeight: fontWeight,
        ),
      ),
    ),
  );
}

//===============================Continer===============================
Widget container(double height, double width, double marginL, double marginR,
    Color color, Widget child,
    {double blur = 0.0,
    Offset offset = Offset.zero,
    double spShadow = 0.0,
    double pL = 0.0,
    double pR = 0.0,
    double pT = 0.0,
    double pB = 0.0,
    double marginT = 0.0,
    double marginB = 0.0,
    double bottomLeft = 0.0,
    double topRight = 0.0,
    double topLeft = 0.0,
    double bottomRight = 0.0}) {
  return Container(
    padding: EdgeInsets.only(left: pL.w, right: pR.w, top: pT.h, bottom: pB.h),
    width: width.w,
    height: height.h,
    margin: EdgeInsets.only(
        left: marginL.w, right: marginR.w, top: marginT.h, bottom: marginB.h),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(bottomLeft),
            topRight: Radius.circular(topRight),
            topLeft: Radius.circular(topLeft),
            bottomRight: Radius.circular(bottomRight)),
        color: color,
        boxShadow: [
          BoxShadow(blurRadius: blur, offset: offset, spreadRadius: spShadow)
        ]),
    child: child,
  );
}

//gradient contaner------------------------------------------------------------------
Widget gradientContainer(double width, Widget child) {
  return Container(
    width: width.w,
    // height: height.h,
    child: child,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(4.0),
      gradient: const LinearGradient(
        begin: Alignment(0.7, 2.0),
        end: Alignment(-0.69, -1.0),
        colors: [Color(0xff0ab3d0), Color(0xffe468ca)],
        stops: [0.0, 1.0],
      ),
    ),
  );
}
//solid: contaner------------------------------------------------------------------

Widget solidContainer(double width, Color color, Widget child) {
  return Container(
    width: width.w,
    // height: height.h,

    child: child,
    decoration: BoxDecoration(
      color: color,
      border: Border.all(color: deepBlack, width: 1.5),
      borderRadius: BorderRadius.circular(4.0),
    ),
  );
}
//=============================Padding Widget=================================

Widget padding(
  double left,
  double right,
  Widget child
) {
  return Padding(
    padding: EdgeInsets.only(left: left.w, right: right.w),
    child: child,
  );
}

//=================================Buttoms=============================
Widget buttoms(context, String key, double fontSize, Color textColor, onPressed,
    {Color backgrounColor = transparent,
    double horizontal = 0.0,
    double vertical = 0.0,
    double evaluation = 0.0}) {
  return TextButton(
    onPressed: onPressed,
    child: text(context, key, fontSize, textColor),
    style: ButtonStyle(
      elevation: MaterialStateProperty.all(evaluation),
      backgroundColor: MaterialStateProperty.all(backgrounColor),
      foregroundColor: MaterialStateProperty.all(textColor),
      padding: MaterialStateProperty.all(
          EdgeInsets.symmetric(horizontal: horizontal.w, vertical: vertical.h)),
    ),
  );
}

//===============================Go To page(push)===============================
push(context, pageName) {
  return Navigator.push(context, MaterialPageRoute(builder: (_) => pageName));
}

//===============================Go To page(pushReplacement)===============================
pushReplacement(context, pageName) {
  return Navigator.pushReplacement(
      context, MaterialPageRoute(builder: (_) => pageName));
}

//get heghit and width===============================================================
Size getSize(context) {
  return MediaQuery.of(context).size;
}

//=============================TextFields=================================
Widget textField(
  context,
  icons,
  String key,
  double fontSize,
  bool hintPass,
  TextEditingController mycontroller,
  myvali,
  {Widget? suffixIcon,void Function()? onTap}
) {
  return TextFormField(
    obscureText: hintPass,
    validator: myvali,
    onTap: onTap,
    controller: mycontroller,
    style: TextStyle(color: white, fontSize: fontSize.sp),
    decoration: InputDecoration(
        isDense: true,
        filled: true,
        suffixIcon:suffixIcon,
        hintStyle: TextStyle(color: deepBlack, fontSize: fontSize.sp),
        fillColor: ligthtBlack,
        labelStyle: TextStyle(color: deepBlack, fontSize: fontSize.sp),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.r)),
        prefixIcon: Icon(icons, color: deepBlack, size: 25.sp),
        labelText: key,
        contentPadding: EdgeInsets.all(10.h)),
  );
}

//SingWith bouttom------------------------------------------------------------------
Widget singWthisButtom(
    context, String key, Color textColor, Color backColor, onPressed, image) {
  return TextButton(
    onPressed: onPressed,
    child: Row(mainAxisSize: MainAxisSize.min, children: [
      Image(
        image: AssetImage(image),
        height: 30.h,
        width: 30.w,
      ),
      SizedBox(
        width: 16.92.w,
      ),
      text(context, key, 11.sp, textColor)
    ]),
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all(backColor),
      foregroundColor: MaterialStateProperty.all(textColor),
    ),
  );
}
