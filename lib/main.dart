import 'dart:ffi';

import 'package:celepraty/Models/Methods/method.dart';
import 'package:celepraty/celebrity/celebratyProfile.dart';
import 'package:celepraty/celebrity/home.dart';
import 'package:celepraty/celebrity/profileInformation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:device_preview/device_preview.dart';

void main() => runApp(
  DevicePreview(
    enabled: true,
    builder: (context) => MyApp(), // Wrap your app
  ),
);

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // i cant hear u
  @override
  Widget build(BuildContext context) {
    //
    return ScreenUtilInit(
      designSize: const Size(413, 763),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: () =>
          MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(fontFamily: "Cairo"),
            home: home(),
          ),
    );
  }
}