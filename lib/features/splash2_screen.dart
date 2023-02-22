import 'package:flutter/material.dart';
import 'package:tayo_app/config/routes/app_routes.dart';

class Splash2Screen extends StatefulWidget {
  @override
  State<Splash2Screen> createState() => _Splash2ScreenState();
}

class _Splash2ScreenState extends State<Splash2Screen> {
  int splashTime = 2;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: splashTime), () async {
      Navigator.pushReplacementNamed(context, AppRoutes.loginScreenRouteName);
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Image(image: AssetImage('assets/images/splash2.png')),
      ),
    );
  }
}
