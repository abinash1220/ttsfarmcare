import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
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
    await Future.delayed(Duration(seconds: 2));
    Get.offAll(LandingScreen());
  }
 

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Image(image: AssetImage("assets/images/splash_backrnd.png") 
          ),
          Center(
            child: Image(image: AssetImage("assets/images/TTS_logo.png")),
          ),
        ],
      ),
      
    );
  }
}