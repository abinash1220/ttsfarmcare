import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../home_Screen/home_navigationbar.dart';

class LoaderScreen extends StatefulWidget {
  const LoaderScreen({super.key});

  @override
  State<LoaderScreen> createState() => _LoaderScreenState();
}

class _LoaderScreenState extends State<LoaderScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    redirectToNext();
  }

  redirectToNext() async {
    await Future.delayed(Duration(seconds: 3));
    Get.offAll(HomeNavigationBar());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Lottie.asset("assets/icons/loader.json")),
    );
  }
}