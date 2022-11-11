import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ttsfarmcare/services/register_api_services/register_api_service.dart';
import 'package:ttsfarmcare/view/sign_in_view/sign_up_otp_screen.dart';

import 'package:dio/dio.dart' as dio;
import 'package:ttsfarmcare/view/view_cart_pages/payment_screen.dart';

import '../../services/add_address_api_services/add_address_api_service.dart';
import '../../services/change_password_api_services/forgot_pwd_api_service.dart';
import '../../view/new_password_page/new_password_successfully_screen.dart';


class ForgotPwdchangeApiController extends GetxController {
  ForgotPwdChangeApiService forgotPwdChangeApiService = ForgotPwdChangeApiService();

  forgotPwdApiUser({
    required String password,
    required String new_password,
    
  }) async {
    final prefs = await SharedPreferences.getInstance();
    dio.Response<dynamic> response =
        await forgotPwdChangeApiService.pwdChangeServices(
           password:password,
           new_password:new_password
            );
    
   print(":::::::::::::::: forgot password statuscode:::::::::::::::::::::");
   print(response.statusCode);

    if (response.statusCode == 200) {
           Get.to(()=> PasswordSuccessfullyScreen());
       // Get.find<SentOtpController>().sentOtpUser(mobile_number: mobile_number);

    } else if(response.statusCode ==400){
      Get.snackbar("incorrect", "",
          snackPosition: SnackPosition.BOTTOM,
          colorText: Colors.white,
          backgroundColor: Colors.red);
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
