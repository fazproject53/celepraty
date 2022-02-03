import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:device_preview/device_preview.dart';
import 'Account/Singup.dart';
void main() => runApp(
  DevicePreview(
    enabled: true,
    builder: (context) => const MyApp(),
  ),
);

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
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
            home: Home(),
          ),
    );
  }
}

class Home extends StatefulWidget{
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home>{

  @override
  Widget build(BuildContext context) {
       ScreenUtil.setContext(context);
        return MediaQuery(
          data: MediaQuery.of(context).copyWith(textScaleFactor: 1.28),
          child:  const Scaffold(
            body: SingUp(),
          ),
        );

  

  }
}