import 'package:flutter/material.dart';
import 'package:nectar_ui/core/utils/colors.dart';
import 'package:nectar_ui/features/splash/splash_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(backgroundColor: AppColors.borderColor,surfaceTintColor: Colors.transparent),
        scaffoldBackgroundColor: AppColors.whiteColor,
        inputDecorationTheme: InputDecorationTheme(
          labelStyle: TextStyle(
            fontSize: 16,
            color: AppColors.greyColor,
            fontWeight: FontWeight.w500,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Colors.redAccent),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Colors.redAccent),
          ),
        ),
      ),
      home: SplashScreen(),
    );
  }
}
