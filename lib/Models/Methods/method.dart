//================ convert hex colors to rgb colors================
import 'package:celepraty/Models/Variabls/varaibles.dart';
import 'package:celepraty/localization/localization_methods.dart';
import 'package:flutter/cupertino.dart';
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
  family = "Ciro",
  align = TextAlign.center,
  double space = 0,
  FontWeight fontWeight = FontWeight.normal,
}) {
  return Center(
    child: Text(
      key,
      textAlign: align,
      style: TextStyle(
        color: color,
        fontFamily: family,
        fontSize: fontSize.sp,
        letterSpacing: space.sp,
        fontWeight: fontWeight,
      ),
    ),
  );
}

//===============================Continer===============================
Widget container(double height, double width, double marginL, double marginR,
    Widget child, Color color,
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

//gradient:  contaner------------------------------------------------------------------
Widget gradientContainer(double width,Widget child) {

  return Container(
      width: width.w,
      child:child,
      decoration: BoxDecoration(
        boxShadow: [],
        borderRadius: BorderRadius.circular(10.0),
        gradient: const LinearGradient(
          begin: Alignment(0.7, 2.0),
          end: Alignment(-0.69, -1.0),
          colors: [Color(0xff0ab3d0), Color(0xffe468ca)],
          stops: [0.0, 1.0],
        ),
        
      ),
    
    
  );
}
Widget gradientContainerWithHeight(double width, double height, Widget child) {

  return Container(
    width: width.w,
    height: height.h,
    child:child,
    decoration: const BoxDecoration(
      borderRadius: BorderRadius.only( bottomLeft: Radius.circular(10.0), topLeft: Radius.circular(10.0),),
      gradient: LinearGradient(
        begin: Alignment(0.7, 2.0),
        end: Alignment(-0.69, -1.0),
        colors: [Color(0xff0ab3d0), Color(0xffe468ca)],
        stops: [0.0, 1.0],

      ),

    ),


  );
}
//=============================Padding Widget=================================

Widget padding(double pL, double pR, double pT, Widget child,
    {double pB = 0.0}) {
  return Padding(
    padding: EdgeInsets.only(left: pL.w, right: pR.w, top: pT.h, bottom: pB.h),
    child: child,
  );
}

//=================================Buttoms=============================
Widget buttoms(context, String key, fontSize, Color textColor, onPressed,
    {Color backgrounColor = transparent,
    double horizontal = 0.0,
    double vertical = 0.0,
    double evaluation = 0.0}) {
  return SizedBox(
    width: double.infinity.w,
    height: 45.h,
    child: TextButton(
      onPressed: onPressed,
      child: text(context, key, fontSize, textColor),
      style: ButtonStyle(
        elevation: MaterialStateProperty.all(evaluation),
        backgroundColor: MaterialStateProperty.all(backgrounColor),
        foregroundColor: MaterialStateProperty.all(textColor),
        padding: MaterialStateProperty.all(EdgeInsets.symmetric(
            horizontal: horizontal.w, vertical: vertical.h)),
      ),
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

//============================profile buttons for listView ========================

Widget addListViewButton(String text, IconData icon){
  return  Row(children:[  padding(0, 5, 0, SizedBox( child: Icon(icon, color: purple,)),),
  const SizedBox(width: 10,),
  Expanded(flex:10,child: Text(text, style: TextStyle(color: black, fontSize: 14.sp),),),]);

}

//get heghit and width===============================================================
Size getSize(context){
  return MediaQuery.of(context).size;}

  //=============================TextFields=================================
  Widget textField(
      context,
      icons,
      String key,
      double fontSize,
      bool hintPass,
      TextEditingController mycontroller,
      myvali,
      ) {
    return TextFormField(
      obscureText: hintPass,
      validator: myvali,
      controller: mycontroller,
      style: TextStyle(color: white, fontSize: fontSize.sp),
      decoration: InputDecoration(

          isDense: true,
          filled: true,
          hintStyle: TextStyle(color: black, fontSize: fontSize.sp),
          fillColor: textFieldBlack,
          labelStyle: TextStyle(color: white, fontSize: fontSize.sp),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.r)),
          prefixIcon: Icon(icons, color: black, size: 25.sp),
          labelText: key,

          contentPadding: EdgeInsets.all(10.h)),
    );

}

Widget textFieldNoIcon(
    context,
    String key,
    double fontSize,
    bool hintPass,
    TextEditingController mycontroller,
    myvali,
    ) {
  return TextFormField(
    obscureText: hintPass,
    validator: myvali,
    controller: mycontroller,
    style: TextStyle(color: white, fontSize: fontSize.sp, fontFamily: 'Cairo'),
    decoration: InputDecoration(
        isDense: false,
        filled: true,
        hintStyle: TextStyle(color: black, fontSize: fontSize.sp, fontFamily: 'Cairo'),
        fillColor: textFieldBlack2,
        labelStyle: TextStyle(color: white, fontSize: fontSize.sp),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.r)),
        labelText: key,

        contentPadding: EdgeInsets.all(10.h)),
  );

}
Widget textFieldNoIcon2(
    context,
    String key,
    double fontSize,
    bool hintPass,
    TextEditingController mycontroller,
    myvali,
    ) {
  return TextFormField(
    obscureText: hintPass,
    validator: myvali,
    controller: mycontroller,
    style: TextStyle(color: white, fontSize: fontSize.sp, fontFamily: 'Cairo'),
    decoration: InputDecoration(
        isDense: false,
        filled: true,
        hintStyle: TextStyle(color: black, fontSize: fontSize.sp, fontFamily: 'Cairo'),
        fillColor: textFieldBlack2,
        labelStyle: TextStyle(color: white, fontSize: fontSize.sp),
        border: OutlineInputBorder(borderRadius: BorderRadius.only( bottomRight: Radius.circular(10.0), topRight: Radius.circular(10.0),)),
        labelText: key,

        contentPadding: EdgeInsets.all(10.h)),
  );

}


Widget textFeildWithButton(context, child1, child2){
  return padding(15, 15, 0, SizedBox(
    width: getSize(context).width,
    child: Row(
      children: [

        Expanded(
          child: padding(0, 0, 12,Container(
            width: getSize(context).width/1.5,
            child: child1
          ),),
        ),

        Positioned.fill(
          child: Align(
            alignment: Alignment.centerLeft,
            child: padding(0, 0, 12, child2),

          ),
        ),


      ],),
  ),);

}
