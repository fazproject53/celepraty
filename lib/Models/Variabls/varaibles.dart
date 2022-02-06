import 'package:celepraty/Models/Methods/method.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

//colors----------------------------------------------------------------
Color blue = hexToColor('#0AB3D0');
Color white = hexToColor('#FFFFFF');
Color pink = hexToColor('#E468CA');
Color pinkLigth = hexToColor('#FB6580');
Color purple = hexToColor('#8952EA');
Color black = hexToColor('#000000');
Color ligthtBlack = hexToColor('#1D192C');
Color darkBlue = hexToColor('#39579A');
Color textBlack = hexToColor('#5C5E6F');
Color darkWhite = hexToColor('#7B7B8B');
Color deepBlack = hexToColor('#7477A0');
const Color transparent=Colors.transparent;

//Icons name----------------------------------------------------------------
IconData nameIcon=Icons.person;
IconData passIcon=Icons.lock_outline;
IconData emailIcon=Icons.email_outlined;
IconData countryIcon=Icons.flag_rounded;
IconData catogaryIcon=Icons.reduce_capacity_rounded;

//controller name----------------------------------------------------------------
TextEditingController nameConttroller= TextEditingController();
TextEditingController passConttroller=TextEditingController();
TextEditingController emailConttroller=TextEditingController();
TextEditingController countryConttroller=TextEditingController();
TextEditingController catogaryConttroller=TextEditingController();

//image path------------------------------------------------------
String staticPath="assets/image/";
String googelImage=staticPath+"google-logo.png";
String facebookImage=staticPath+"facbok_logo.png";

//country list-------------------------------------------------------------
List<String>countryName=[ "السعودية","الامارات","البحرين","الكويت","المانيا", "ماليزيا","قطر", "الجزائر","لبنان","سنغافورة","تركيا","الصين","فرنسا","الهند","مصر","العراق""الاردن""امريكا""كوريا"];
//font textScaling
double textScaling = 2.7;