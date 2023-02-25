import 'package:flutter/material.dart';
import 'package:tayo_app/config/routes/app_routes.dart';
import 'package:tayo_app/features/login/presentations/ui/login_screen.dart';
import 'package:tayo_app/features/register/presentations/ui/register_screen.dart';
import 'package:tayo_app/features/splash2_screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'features/home/presentations/ui/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.registerScreenRouteName,
      routes: {
        AppRoutes.loginScreenRouteName: (context) => LoginScreen(),
        AppRoutes.splash2ScreenRouteName: (context) => Splash2Screen(),
        AppRoutes.homeScreenRouteName: (context) => HomeScreen(),
        AppRoutes.registerScreenRouteName: (context) => const RegisterScreen(),
      },
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: Locale('ar'),
    );
  }
}
