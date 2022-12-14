import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ttsfarmcare/controllers/profile_user_details_api_controllers/profile_user_controller.dart';
import 'package:ttsfarmcare/services/verify_otp_api_services/verify_otp_api_service.dart';

import 'package:dio/dio.dart' as dio;

import '../../view/sign_in_view/signUp_sucessfully.dart';

class VerifyOtpController extends GetxController {
 VerifyOtpApiService verifyOtpApiServices = VerifyOtpApiService();

 RxString tempResponse = "".obs;

  verifyOtpUser({
   
    required String mobile_number,
    required String otp,
    
  }) async {
   // final prefs = await SharedPreferences.getInstance();
    dio.Response<dynamic> response =
        await verifyOtpApiServices.verifyOtpApiServices(
            mobile_number: mobile_number,
            otp: otp,
        );
           
           print(":::::::::verify otp status code:::::::::::"); 
      print(response.statusCode);
      print(response.data);
    if (response.statusCode == 200) {
     // print(response.data["token"]);

      //await prefs.setString("auth_token", response.data["token"]);
      Get.find<GetProfileControllers>().getProfiledetails();
      Get.to(() => SignUpSucessfully());
      print(response.statusCode);
    }else if(response.statusCode == 400){
      Get.snackbar("Please enter correct otp","",
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
