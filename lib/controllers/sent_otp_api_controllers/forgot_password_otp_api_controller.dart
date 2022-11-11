import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ttsfarmcare/services/register_api_services/register_api_service.dart';
import 'package:ttsfarmcare/view/forgot_password_page/verification_code_screen.dart';
import 'package:ttsfarmcare/view/sign_in_view/sign_up_otp_screen.dart';

import 'package:dio/dio.dart' as dio;

import '../../services/sent_otp_api_services/forgot_password_otp_api_service.dart';
import '../../services/sent_otp_api_services/sent_otp_api_service.dart';
import '../../view/sign_in_view/signUp_sucessfully.dart';

class ForgotOtpController extends GetxController {
 ForgotOtpApiService forgotOtpApiServices = ForgotOtpApiService();

  forgotOtpUser({
   
    required String mobile_number,
    
  }) async {
   // final prefs = await SharedPreferences.getInstance();
    dio.Response<dynamic> response =
        await forgotOtpApiServices.forgotOtpApiServices(
            mobile_number: mobile_number,
        );
           
           print(":::::::::forgot Otp send status code:::::::::::"); 
      print(response.statusCode);
      print(response.data);
    if (response.statusCode == 200) {
     // print(response.data["token"]);

      //await prefs.setString("auth_token", response.data["token"]);

     // Get.to(() => SignUpSucessfully());
      Get.to(() => VerificationCode(mobile_number: mobile_number,));

    } else {
      print(response.statusCode);
      print(response.data);
      Get.snackbar("Something went worng", response.data,
          snackPosition: SnackPosition.BOTTOM,
          colorText: Colors.white,
          backgroundColor: Colors.red);
    }
  }
}
