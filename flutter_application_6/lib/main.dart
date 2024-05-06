import 'package:flutter/material.dart';
import 'package:flutter_application_5/myapp.dart';

void main() {
  runApp(const MainApp());
}
class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'CCMOBPGL Mobile Programming Course',
      debugShowCheckedModeBanner: false,
      home:MyApp()
      );
  }
}




