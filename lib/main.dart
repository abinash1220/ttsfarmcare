import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:ttsfarmcare/controllers/about_product_controller.dart';
import 'package:ttsfarmcare/controllers/home_Controllers.dart';
import 'package:ttsfarmcare/controllers/login_api_controllers/login_controller.dart';
import 'package:ttsfarmcare/controllers/profile_controller.dart';
import 'package:ttsfarmcare/controllers/register_controller.dart';
import 'package:ttsfarmcare/view/splash_view/splash_screen.dart';
import 'package:device_preview/device_preview.dart';
import 'controllers/sign_up_controllers.dart';
import 'controllers/view_cart_controller.dart';

void main() {
  Get.put(SignUpControllers());
  Get.put(HomeControllers());
  Get.put(ViewCartController());
  Get.put(AboutProductController());
  Get.put(ProfileController());
  Get.put(RegisterController());
  Get.put(LoginController());
  runApp(
    MyApp(),
    //  DevicePreview(
    //   enabled: !kReleaseMode,
    //   builder: (context) => MyApp(),
    // ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(392, 803),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
          useInheritedMediaQuery: true,
          //  locale: DevicePreview.locale(context),
          //  builder: DevicePreview.appBuilder,
          title: 'TTS Farm Care',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: SplashScreen(),
        );
      },
    );
  }
}
