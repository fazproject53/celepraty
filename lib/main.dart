import 'package:celepraty/Models/Methods/method.dart';
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
     
      designSize:  ScreenUtil.defaultSize,
      minTextAdapt: true,
      splitScreenMode: true,
      builder: () => MaterialApp(
        theme: ThemeData(fontFamily: "Cairo"),
        builder: (context, widget) {
          ScreenUtil.setContext(context);
          return MediaQuery(
          
            data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
            child: Scaffold(
              body: gradientContainer(200.w, Text("hhhhhhhhhhhhhhhhhhhh",style: TextStyle(fontSize:50.sp
              
              ),)),
            ),

          );
        },
      ),
    );
  }
}
