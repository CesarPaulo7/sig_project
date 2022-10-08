import 'package:flutter/material.dart';
import 'package:si2_rrhh/screens/login_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'RRHH',
      initialRoute: 'login',
      routes: {
        'login' :(context) => LoginScreen(),
      },
    theme: ThemeData.light().copyWith(
      scaffoldBackgroundColor: Colors.grey[100]
    ) ,
    
      );
  }
}