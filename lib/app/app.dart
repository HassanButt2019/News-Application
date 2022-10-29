
// Application IS ALREADY A SINGLETON, there is only one instance of your Application

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_application/bloc/news_bloc/news_bloc.dart';
import 'package:news_application/data/repository/news_repository.dart';
import 'package:news_application/presentation/constants/theme/theme.dart';
import 'package:news_application/presentation/home/view/view.dart';
import 'package:news_application/presentation/splash/view/view.dart';

class MyApp extends StatelessWidget {
  static final MyApp instance = MyApp._internal();
  factory MyApp() => instance;
  MyApp._internal(); //private constructor

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: getApplicationTheme(),
      home:  SplashScreen(),
    );
///
  }
}
