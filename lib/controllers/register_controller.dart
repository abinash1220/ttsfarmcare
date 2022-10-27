import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ttsfarmcare/services/register_api_services/register_api_service.dart';
import 'package:ttsfarmcare/view/sign_in_view/sign_up_otp_screen.dart';

import 'package:dio/dio.dart' as dio;

class RegisterController extends GetxController {
  RegisterApiService registerApiServices = RegisterApiService();

  registerUser({
    required String name,
    dynamic companyName,
    required String email,
    required String mobile_number,
    required String password,
    required String address,
    dynamic gst_number,
    required String district,
  }) async {
    final prefs = await SharedPreferences.getInstance();
    dio.Response<dynamic> response =
        await registerApiServices.registerApiServices(
            name: name,
            email: email,
            mobile_number: mobile_number,
            password: password,
            address: address,
            district: district);

    if (response.statusCode == 200) {
      print(response.data["token"]);

      await prefs.setString("auth_token", response.data["token"]);

      Get.to(() => SignUpOtp());
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
