import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ttsfarmcare/view/home_Screen/home_navigationbar.dart';
import 'package:ttsfarmcare/view/landing_page/landing_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    redirectToNext();
  }

  redirectToNext() async {
    final prefs = await SharedPreferences.getInstance();

    var auth_token = prefs.getString("auth_token");
    print("Auth token ");
    print(auth_token);

    if (auth_token != null && auth_token != "null") {
      await Future.delayed(Duration(seconds: 2));
      Get.offAll(HomeNavigationBar());
    } else {
      await Future.delayed(Duration(seconds: 2));
      Get.offAll(LandingScreen());
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage("assets/images/splash_backrnd.png"),
          fit: BoxFit.cover,
        )),
        child: Stack(
          children: [
            //   Image(image: AssetImage("assets/images/splash_backrnd.png")
            //   ),
            Center(
              child: Image(image: AssetImage("assets/images/TTS_logo.png")),
            ),
          ],
        ),
      ),
    );
  }
}
