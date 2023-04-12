import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:university_app/screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle( const SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.transparent, // navigation bar color
    statusBarColor: Colors.transparent, // status bar color
  ));
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'UNSTA App',
      home: Home(),
    );
  }
}

