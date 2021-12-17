import 'package:flutter/material.dart';
import 'package:teacher_app/Pages/home_page.dart';
import 'package:teacher_app/utils/routes.dart';
import 'package:teacher_app/widgets/themes.dart';

import 'Pages/login_page.dart';
void main(){
  runApp(TeacherApp());
}

class TeacherApp extends  StatelessWidget {
  const TeacherApp({ Key ? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
  
     return MaterialApp(
     themeMode: ThemeMode.light,
     theme: MyTheme.lightTheme(context),
     debugShowCheckedModeBanner: false,
     initialRoute: MyRoutes.homeRoute,
     routes: {
        MyRoutes.loginRoute: (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
     },
    ); 
  }
}