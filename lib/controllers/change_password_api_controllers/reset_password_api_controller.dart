import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ttsfarmcare/services/change_password_api_services/reset_password_api_service.dart';
import 'package:ttsfarmcare/services/register_api_services/register_api_service.dart';
import 'package:ttsfarmcare/view/home_Screen/home_navigationbar.dart';
import 'package:ttsfarmcare/view/profile_screen/profile_screen.dart';
import 'package:ttsfarmcare/view/sign_in_view/sign_up_otp_screen.dart';

import 'package:dio/dio.dart' as dio;
import 'package:ttsfarmcare/view/view_cart_pages/place_order_screen.dart';

import '../../constants/app_colors.dart';
import '../../services/add_address_api_services/add_address_api_service.dart';
import '../../services/change_password_api_services/forgot_pwd_api_service.dart';
import '../../view/new_password_page/new_password_successfully_screen.dart';


class ResetPasswordApiController extends GetxController {
  ResetPasswordApiService resetPasswordApiService = ResetPasswordApiService();

  resetpassword({
    required String original_password,
    required String new_password,
    required String confirm_password
    
  }) async {
    final prefs = await SharedPreferences.getInstance();
    dio.Response<dynamic> response =
        await resetPasswordApiService.resetPasswordServices(
           original_password: original_password,
           new_password:new_password,
           confirm_password: confirm_password
            );
    
   print(":::::::::::::::: reset password statuscode:::::::::::::::::::::");
   print(response.statusCode);

    if (response.statusCode == 200) {
           Get.to(()=> HomeNavigationBar(index: 3,));
            Get.snackbar("Password changed successfully", "",
           snackPosition: SnackPosition.BOTTOM,
           colorText: Colors.white,
           backgroundColor: darkGreenColor);

    } else if(response.statusCode ==400){
      Get.snackbar("Your original password was wrong", "",
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
