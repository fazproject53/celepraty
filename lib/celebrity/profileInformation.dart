import 'package:celepraty/Models/Methods/method.dart';
import 'package:celepraty/Models/Variabls/varaibles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class profileInformaion extends StatefulWidget{
  _profileInformaionState createState() => _profileInformaionState();
}

class _profileInformaionState extends State<profileInformaion>{
  final _formKey = GlobalKey<FormState>();
  final TextEditingController mycontroller = new TextEditingController();
  String dropdownvalue = 'الدولة';
  String dropdownvalue2 = 'المدينة';
  String dropdownvalue3 = 'التصنيف';
  var items = ['الدولة', 'Item 2', 'Item 3', 'Item 4', 'Item 5',];
  var items2 = ['المدينة', 'Item 2', 'Item 3', 'Item 4', 'Item 5',];
  var items3 = ['التصنيف', 'Item 2', 'Item 3', 'Item 4', 'Item 5',];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Directionality(
          textDirection: TextDirection.rtl,
          child: SingleChildScrollView(
            child: Container(
              child: Form(
                key: _formKey,
              child: padding(12, 12, 5, Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                  SizedBox(height: 80.h,),
                    padding(10, 12, 0,Container( alignment : Alignment.topRight,child: Text('قم بملئ/تعديل او', style: TextStyle(fontSize: 18, color: textBlack , fontFamily: 'Cairo'), )),),
                    padding(12, 12, 0,Container(alignment : Alignment.topRight,child: Text( 'معلوماتك الشخصية', style: TextStyle(fontSize: 18, color: textBlack , fontFamily: 'Cairo'), )),),

                    //========================== form ===============================================

                    SizedBox(height: 30,),

                    padding(15, 15, 12,textFieldNoIcon(context, 'الاسم', 12, true, mycontroller,(String? value) {if (value == null || value.isEmpty) {
                        return 'Please enter some text';} return null;},),),
                    padding(15, 15, 12,textFieldNoIcon(context, 'البريد الالكتروني', 12, true, mycontroller,(String? value) {if (value == null || value.isEmpty) {
                      return 'Please enter some text';} return null;},),),
                    padding(15, 15, 12,textFieldNoIcon(context, 'كلمة المرور', 12, true, mycontroller,(String? value) {if (value == null || value.isEmpty) {
                      return 'Please enter some text';} return null;},),),
                    padding(15, 15, 12,textFieldNoIcon(context, 'رقم الجوال', 12, true, mycontroller,(String? value) {if (value == null || value.isEmpty) {
                      return 'Please enter some text';} return null;},),),


                    padding(15, 15, 12, Container(
                      decoration: BoxDecoration(   color: textFieldBlack2,  borderRadius: BorderRadius.circular(10),),
                      child: DropdownButtonFormField(
                            value: dropdownvalue, icon: const Icon(Icons.keyboard_arrow_down, color: Colors.white,), items: items.map((String items) {
                            return DropdownMenuItem(value: items, child: padding(15, 15, 5,Text(items),),);}).toList(),
                                     onChanged: (String? newValue) {setState(() {dropdownvalue = newValue!;});},
                                     style: TextStyle(color: white, fontSize: 14.sp),
                                     isExpanded: true,),
                    ),),

                    padding(15, 15, 12,Container(
                      decoration: BoxDecoration(   color: textFieldBlack2,  borderRadius: BorderRadius.circular(10),),
                      child: DropdownButtonFormField(value: dropdownvalue2, icon: const Icon(Icons.keyboard_arrow_down, color: Colors.white,), items: items2.map((String items) {
                        return DropdownMenuItem(value: items, child: padding(15, 15, 5,Text(items),),);}).toList(),
                        onChanged: (String? newValue) {setState(() {dropdownvalue2 = newValue!;});},
                        style: TextStyle(color: white, fontSize: 14.sp),
                        isExpanded: true,),),),

                      padding(15, 15, 12, Container(
                        decoration: BoxDecoration(   color: textFieldBlack2,  borderRadius: BorderRadius.circular(10),),
                      child: DropdownButtonFormField(value: dropdownvalue3, icon: const Icon(Icons.keyboard_arrow_down, color: Colors.white,), items: items3.map((String items) {
                        return DropdownMenuItem(value: items, child: padding(15, 15, 5,Text(items),),);}).toList(),
                        onChanged: (String? newValue) {setState(() {dropdownvalue3 = newValue!;});},
                        style: TextStyle(color: white, fontSize: 14.sp),
                        isExpanded: true,),),),

                    //===========dropdown lists ==================
                    padding(15, 15, 12,textFieldNoIcon(context, 'رابط الصفحة', 14, true, mycontroller,(String? value) {if (value == null || value.isEmpty) {
                      return 'Please enter some text';} return null;},),),


                    //===================================== اضافة روابط الصفحات =======================================================
                    textFeildWithButton(context, textFieldNoIcon2(context, 'رابط صفحة سناب شات', 14.sp, true, mycontroller,(String? value) {if (value == null || value.isEmpty) {
                      return 'Please enter some text';} return null;},), gradientContainerWithHeight(getSize(context).width/4, 45.h ,
                            Container(child: InkWell(onTap: (){}, child: text(context, 'اضافة', 14.sp, white)),),),),
                    textFeildWithButton(context, textFieldNoIcon2(context, 'رابط صفحة تيك توك', 14.sp, true, mycontroller,(String? value) {if (value == null || value.isEmpty) {
                      return 'Please enter some text';} return null;},), gradientContainerWithHeight(getSize(context).width/4,45.h ,
                      Container(child: InkWell(onTap: (){}, child: text(context, 'اضافة', 14.sp, white)),),),),
                    textFeildWithButton(context, textFieldNoIcon2(context, 'رابط صفحة يوتيوب', 14.sp, true, mycontroller,(String? value) {if (value == null || value.isEmpty) {
                      return 'Please enter some text';} return null;},), gradientContainerWithHeight(getSize(context).width/4,45.h ,
                      Container(child: InkWell(onTap: (){}, child: text(context, 'اضافة', 14.sp, white)),),),),
                    textFeildWithButton(context, textFieldNoIcon2(context, 'رابط صفحة الانستجرام', 14.sp, true, mycontroller,(String? value) {if (value == null || value.isEmpty) {
                      return 'Please enter some text';} return null;},), gradientContainerWithHeight(getSize(context).width/4,45.h ,
                      Container(child: InkWell(onTap: (){}, child: text(context, 'اضافة', 14.sp, white)),),),),
                    textFeildWithButton(context, textFieldNoIcon2(context, 'رابط صفحة الفيسبوك', 14.sp, true, mycontroller,(String? value) {if (value == null || value.isEmpty) {
                      return 'Please enter some text';} return null;},), gradientContainerWithHeight(getSize(context).width/4,45.h ,
                      Container(child: InkWell(onTap: (){}, child: text(context, 'اضافة', 14.sp, white)),),),),
                    textFeildWithButton(context, textFieldNoIcon2(context, 'رابط صفحة تويتر', 14.sp, true, mycontroller,(String? value) {if (value == null || value.isEmpty) {
                      return 'Please enter some text';} return null;},), gradientContainerWithHeight(getSize(context).width/4,45.h ,
                      Container(child: InkWell(onTap: (){}, child: text(context, 'اضافة', 14.sp, white)),),),),
                    textFeildWithButton(context, textFieldNoIcon2(context, 'رابط صفحة لينكدان', 14.sp, true, mycontroller,(String? value) {if (value == null || value.isEmpty) {
                      return 'Please enter some text';} return null;},), gradientContainerWithHeight(getSize(context).width/4,45.h ,
                      Container(child: InkWell(onTap: (){}, child: text(context, 'اضافة', 14.sp, white)),),),),






                    SizedBox(height: 30,),
                    padding(15, 15, 0, gradientContainer(getSize(context).width,  buttoms(context, 'حفظ', 20.sp, white, (){})),),
                    SizedBox(height: 30,),

            ]),
          ),
        ),
    ),
    ),
        ),
    );
  }}