import 'dart:async';

import 'package:auth_firebase/auth/login_screen.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:cusatian/screens/signin_screen.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo" ,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:const SigninScreen(),
    );
  }
}