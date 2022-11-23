import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ttsfarmcare/services/edit_profile_api_services/edit_profile_api_service.dart';
import 'package:ttsfarmcare/services/register_api_services/register_api_service.dart';
import 'package:ttsfarmcare/view/home_Screen/home_navigationbar.dart';
import 'package:ttsfarmcare/view/profile_screen/profile_screen.dart';
import 'package:ttsfarmcare/view/sign_in_view/sign_up_otp_screen.dart';

import 'package:dio/dio.dart' as dio;
import 'package:ttsfarmcare/view/view_cart_pages/place_order_screen.dart';

import '../../constants/app_colors.dart';
import '../../services/add_address_api_services/add_address_api_service.dart';


class EditProfileController extends GetxController {
  
  EditProfileApiService editProfileApiService = EditProfileApiService();

  editUser({
    required String name,
    required String email,
    required String mobile_number,
    required String company_name,
    required String gst_no,
    required String address,
    required String district,
  }) async {
    final prefs = await SharedPreferences.getInstance();
    dio.Response<dynamic> response =
        await editProfileApiService.EditProfileServices(
         name:name,
         email:email,
         mobile_number:mobile_number,
         company_name:company_name,
         gst_no:gst_no,
         address:address,
         district:district
            );
    
   print("::::::::::::::::add address statuscode:::::::::::::::::::::");
   print(response.statusCode);

    if (response.statusCode == 200) {
           Get.to(()=> HomeNavigationBar(index: 3,));
            Get.snackbar("profile changed successfully", "",
           snackPosition: SnackPosition.BOTTOM,
           colorText: Colors.white,
           backgroundColor: darkGreenColor);

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
