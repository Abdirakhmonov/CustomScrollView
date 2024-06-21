import 'package:flutter/material.dart';
import 'package:lesson_61/views/screens/amaliy_screen.dart';
import 'package:lesson_61/views/screens/home_screen.dart';
import 'package:lesson_61/views/screens/home_work_screen.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AmaliyScreen(),
    );
  }
}
