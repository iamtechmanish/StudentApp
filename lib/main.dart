import 'package:flutter/material.dart';
void main(){
  runApp(TeacherApp());
}

class TeacherApp extends  StatelessWidget {
  const TeacherApp({ Key ? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Material(
        child: Center(
          child: Container(child: Text("Teacher APP"),),
        ),
      ),
    );
  }
}
