import 'package:ebuy/screens/home_page.dart';
import 'package:ebuy/screens/login_page.dart';
import 'package:ebuy/utilities/routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      initialRoute: "/login",
      routes: {
        "/" :(context) => HomePage(),
        MyRoutes.homeRoute : (context) => HomePage(),
        MyRoutes.loginRoute : (context) => LoginPage(),
      },
    );
  }
}
