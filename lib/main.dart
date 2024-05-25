import 'package:flutter/material.dart';
import 'package:flutteriklimapp/home_page.dart';
import 'package:flutteriklimapp/splashscreen.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Plant Advice App',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
       home: SplashScreen(),

      // initialRoute:'/home',
      // routes: {
      //    '/home': (context) => HomePage(),
      //  '/login': (context) => LoginPage(),
      //   '/register': (context) => RegisterPage(),
       
      // },
    );
  }
}
