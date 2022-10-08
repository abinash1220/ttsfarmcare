import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

import '../home_Screen/home_Screen.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override

  void initState() {
    super.initState();
    redirectToNext();
  }
  redirectToNext() async {
    await Future.delayed(Duration(seconds: 2));
    Get.offAll(HomeScreen());
  }

  Widget build(BuildContext context) {
    var size  = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
   height: size.height,
   width: size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Center(
                  child: LoadingAnimationWidget.beat(
                    color: Color(0xff517937),
                    size: 150,
                    ),
                ),
                SizedBox(height: 40,),
                Text("Loading......",style: TextStyle(
                  color: Color(0xff016942),
                  fontWeight: FontWeight.w500,
                  fontSize: 24),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}