import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ttsfarmcare/services/register_api_services/register_api_service.dart';
import 'package:ttsfarmcare/view/sign_in_view/sign_up_otp_screen.dart';

import 'package:dio/dio.dart' as dio;

import '../../services/sent_otp_api_services/sent_otp_api_service.dart';
import '../../view/sign_in_view/signUp_sucessfully.dart';

class SentOtpController extends GetxController {
 SentOtpApiService sentOtpApiServices = SentOtpApiService();

  sentOtpUser({
   
    required String mobile_number,
    
  }) async {
 
    dio.Response<dynamic> response =
        await sentOtpApiServices.sentOtpApiServices(
            mobile_number: mobile_number,
        );
           
           print(":::::::::Otp send status code:::::::::::"); 
      print(response.statusCode);
      print(response.data);
    if (response.statusCode == 200) {
     // print(response.data["token"]);
     

     // Get.to(() => SignUpSucessfully());
      Get.to(() => SignUpOtp(mobile_number: mobile_number));
       

    }else if(response.statusCode==400){
        Get.snackbar("Enter valid Otp number", "",
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
