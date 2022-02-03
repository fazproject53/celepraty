import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:device_preview/device_preview.dart';

import 'Account/Singup.dart';
import 'Account/logging.dart';

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
     
      designSize:const  Size( 413,763),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: () => MaterialApp(
        home:const Logging(),
        debugShowCheckedModeBanner: false,
        theme: ThemeData(fontFamily: "Cairo"),
       builder: (context, widget) {
         ScreenUtil.setContext(context);
          return MediaQuery(
          
            data: MediaQuery.of(context).copyWith(textScaleFactor: 1.28),
            child:const Logging()

          );
       },
      ),
    );
  }
}
