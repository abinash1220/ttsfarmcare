import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ttsfarmcare/models/verifyOtp_model.dart';
import 'package:ttsfarmcare/services/verify_otp_api_services/verify_otp_api_service.dart';

import 'package:dio/dio.dart' as dio;
import 'package:ttsfarmcare/view/new_password_page/new_password.dart';

import '../../models/verify_Otp_model.dart';
import '../../services/verify_otp_api_services/forgot_verify_otp_api_service.dart';
import '../../view/sign_in_view/signUp_sucessfully.dart';

class ForgotOtpVerifyController extends GetxController {
 ForgotOtpVerifyApiService forgotOtpVerifyApiServices = ForgotOtpVerifyApiService();
  
  RxString tempResponse = "response".obs;
  
  UserVerify verifyUser = UserVerify(id: 0,);

  forgotOtpVerifyUser({
   
    required String mobile_number,
    required String otp,
    
  }) async {
   // final prefs = await SharedPreferences.getInstance();
    dio.Response<dynamic> response =
        await forgotOtpVerifyApiServices.forgotOtpVerifyApiServices(
            mobile_number: mobile_number,
            otp: otp,
        );
           
           print(":::::::::verify otp status code:::::::::::"); 
      print(response.statusCode);
      print(response.data);
// 
    //  VerifyOtp verifyOtp = VerifyOtp.fromJson(response.data);

    //  verifyUser = verifyOtp.user;
     tempResponse(response.statusCode.toString());
    if (response.statusCode == 200) {
     // print(response.data["token"]);

      //await prefs.setString("auth_token", response.data["token"]);

      Get.to(() => NewPasswordPage(id: response.data["user"]["id"],));
    }else if(response.statusCode == 400){
      Get.snackbar("Please enter valid otp","",
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
