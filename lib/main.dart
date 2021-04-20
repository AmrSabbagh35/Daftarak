import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:page_transition/page_transition.dart';
import 'package:test_login/screens/Login_Pages/Login_screen.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:test_login/translations/codegen_loader.g.dart';
import 'package:translator/translator.dart';

Future<void> main() async {
  final translator = GoogleTranslator();
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(EasyLocalization(
      path: 'assets/translations',
      supportedLocales: [
        Locale('en'),
        Locale('ar'),
      ],
      useFallbackTranslations: true,
      fallbackLocale: Locale('en'),
      startLocale: Locale('en'),
      assetLoader: CodegenLoader(),
      child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      supportedLocales: context.supportedLocales,
      localizationsDelegates: context.localizationDelegates,
      locale: context.locale,
      debugShowCheckedModeBanner: false,
      title: 'Login Screen',
      // theme: ThemeData.dark(),
      home: AnimatedSplashScreen(
          splash: Icons.menu_book,
          duration: 100,
          splashTransition: SplashTransition.fadeTransition,
          pageTransitionType: PageTransitionType.bottomToTop,
          nextScreen: LoginScreen()),
    );
  }
}

ThemeData _darkTheme = ThemeData(
  primaryTextTheme: TextTheme(),
  accentColor: Colors.white,
  brightness: Brightness.dark,
  primaryColor: Colors.amber,
);

ThemeData _lightTheme = ThemeData(
    accentColor: Colors.pink,
    brightness: Brightness.light,
    primaryColor: Colors.blue);
