import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';
import 'package:heyflutter_challenge_1/views/onboarding_page.dart';

import 'themes/app_themes.dart';

void main() {
    WidgetsFlutterBinding.ensureInitialized();
  Animate.restartOnHotReload = true;
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'HeyFlutterChallenge1',
         builder: (context, child) {
        return MediaQuery(
            data: MediaQuery.of(context)
                .copyWith(textScaler: TextScaler.linear(1.0)),
            child: child!);
      },
      theme: AppThemes.mainTheme,
      home: OnBoardingPage(),
    );
  }
}

