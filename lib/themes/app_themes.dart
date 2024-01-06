import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'app_colors.dart';
import 'app_fonts.dart';

class AppThemes {
  static ThemeData mainTheme = ThemeData(
    fontFamily: 'Rubik',
    radioTheme: RadioThemeData(),
    listTileTheme: ListTileThemeData(
      horizontalTitleGap: -5,
      contentPadding: EdgeInsets.zero,
      // minLeadingWidth: 30
    ),
    useMaterial3: false,
    brightness: Brightness.light,
    primarySwatch: AppColors.createMaterialColor(AppColors.green),
    scaffoldBackgroundColor: Colors.white,
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(AppColors.main1),
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20))),
            elevation: MaterialStateProperty.all(1))),
    navigationBarTheme: NavigationBarThemeData(
        backgroundColor: const Color.fromARGB(255, 248, 244, 244),
        indicatorShape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        iconTheme: const MaterialStatePropertyAll(
            IconThemeData(color: AppColors.main1))),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(elevation: 5),
    appBarTheme: const AppBarTheme(
        systemOverlayStyle: SystemUiOverlayStyle(
            statusBarBrightness: Brightness.light,
            statusBarColor: AppColors.main1),
        elevation: 0,
        titleTextStyle: TextStyle(
            color: AppColors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold),
        centerTitle: false,
        backgroundColor: AppColors.main1),
    inputDecorationTheme: InputDecorationTheme(
      fillColor: AppColors.main2 .withOpacity(0.7),
      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: AppColors.main1),
        borderRadius: BorderRadius.circular(15),
      ),
      errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.red),
          borderRadius: BorderRadius.circular(15)),
      focusColor: const Color.fromARGB(255, 244, 67, 54),
      hintStyle: const TextStyle(fontSize: 14, color: AppColors.main2),
      border: OutlineInputBorder(
          borderSide: BorderSide.none, borderRadius: BorderRadius.circular(15)),
    ),
    textTheme:  TextTheme(bodyMedium: AppFonts.bodyMedium,bodySmall: AppFonts.bodySmall,bodyLarge: AppFonts.bodyLarge)
    );


}