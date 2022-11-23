import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ttsfarmcare/controllers/sent_otp_api_controllers/sent_otp_api_controller.dart';
import 'package:ttsfarmcare/services/login_api_services/login_api_service.dart';
import 'package:ttsfarmcare/view/home_Screen/home_page.dart';

import 'package:dio/dio.dart' as dio;
import 'package:ttsfarmcare/view/sign_in_view/loading_screen.dart';
import 'package:ttsfarmcare/view/sign_in_view/verify_mobile_screen.dart';

import '../../view/loading_screen/loading_screen.dart';

class LoginController extends GetxController {
  LoginApiService loginApiServices = LoginApiService();

  loginUser({
    required String email,
    required String password,
  }) async {
    final prefs = await SharedPreferences.getInstance();
    dio.Response<dynamic> response =
        await loginApiServices.loginApiServices(
            email: email,
            password: password,
           );
    if (response.statusCode == 200) {
      print(response.data["token"]);

      await prefs.setString("auth_token", response.data["token"]);

      Get.to(() => LoadingPage());
    }else if(response.statusCode ==400){
      Get.snackbar("Invalid Login", "",
          snackPosition: SnackPosition.BOTTOM,
          colorText: Colors.white,
          backgroundColor: Colors.red);
    }else if (response.statusCode == 201){
      if (email.isEmail) {
      Get.to(() => VerifyMobileNumber());
}else{
  Get.find<SentOtpController>().sentOtpUser(mobile_number: email);
}
       Get.snackbar("Mobile number not verified", "",
          snackPosition: SnackPosition.BOTTOM,
          colorText: Colors.white,
          backgroundColor: Colors.red);
    }
     else {
      print(response.statusCode);
      print(response.data);
      Get.snackbar("Something went worng", response.data,
          snackPosition: SnackPosition.BOTTOM,
          colorText: Colors.white,
          backgroundColor: Colors.red);
    }
  }
}
