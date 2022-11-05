import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ttsfarmcare/services/register_api_services/register_api_service.dart';
import 'package:ttsfarmcare/view/sign_in_view/sign_up_otp_screen.dart';

import 'package:dio/dio.dart' as dio;
import 'package:ttsfarmcare/view/view_cart_pages/payment_screen.dart';

import '../../services/add_address_api_services/add_address_api_service.dart';


class AddAddressController extends GetxController {
  AddAddressApiService addAddressApiService = AddAddressApiService();

  addAddressUser({
    required String type,
    required String street,
    required String area,
    required String landmark,
    required String city,
    required String state,
    required String pincode,
  }) async {
    final prefs = await SharedPreferences.getInstance();
    dio.Response<dynamic> response =
        await addAddressApiService.addAddressServices(
          type: type,
          street: street,
          area: area,
          landmark: landmark,
          city: city,
          state: state,
          pincode: pincode
            );
    
   print("::::::::::::::::add address statuscode:::::::::::::::::::::");
   print(response.statusCode);

    if (response.statusCode == 200) {
           Get.to(()=> CartPaymentScreen());
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
