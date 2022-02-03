import 'package:celepraty/celebrity/celebratyProfile.dart';
import 'package:celepraty/celebrity/profileInformation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class home extends StatefulWidget{
  _homeState createState() => _homeState();
}

class _homeState extends State<home>{
  int currentIndex = 0;
  final screens = [celebratyProfile(), celebratyProfile(), profileInformaion()];

  @override
  Widget build(BuildContext context) {
       ScreenUtil.setContext(context);
        return MediaQuery(
          data: MediaQuery.of(context).copyWith(textScaleFactor: 1.28),
          child:  Scaffold(
            body: celebratyProfile(),
           /*
           screens[currentIndex],
           bottomNavigationBar: BottomNavigationBar(
                currentIndex: currentIndex,
                type: BottomNavigationBarType.fixed,
                onTap: (index) => setState(() => currentIndex = index),

                items: const [
                  BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('home'),),
                  BottomNavigationBarItem(icon: Icon(Icons.verified_user), title: Text('Information'),),
                  BottomNavigationBarItem(icon: Icon(Icons.verified_user), title: Text('profile'),),
                ]),*/

          ),
        );

     /* builder: (context) {
        return Scaffold(

        );




      }*/

  }
}