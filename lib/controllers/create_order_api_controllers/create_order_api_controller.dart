import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ttsfarmcare/services/create_order_api_services/create_order_api_service.dart';
import 'package:ttsfarmcare/services/register_api_services/register_api_service.dart';
import 'package:ttsfarmcare/view/profile_screen/profile_screen.dart';
import 'package:ttsfarmcare/view/sign_in_view/sign_up_otp_screen.dart';

import 'package:dio/dio.dart' as dio;
import 'package:ttsfarmcare/view/view_cart_pages/payment_successfully_screen.dart';
import 'package:ttsfarmcare/view/view_cart_pages/place_order_screen.dart';

import '../../services/add_address_api_services/add_address_api_service.dart';


class CreateOrderController extends GetxController {
  CreateOrderApiService createOrderApiService = CreateOrderApiService();

  addCreateOrder({
    required String product_id,
    required String quantity,
    required String amount,
    required String payment_method_id,
    required String address_id,
    required String payment_status,
    required String cart_id,

  }) async {
    final prefs = await SharedPreferences.getInstance();
    dio.Response<dynamic> response =
        await createOrderApiService.createOrderServices(
          product_id: product_id,
          quantity: quantity,
          amount: amount,
          payment_method_id: payment_method_id,
          address_id: address_id,
          payment_status: payment_status,
          cart_id: cart_id
        );
    
   print("::::::::::::::::create order statuscode:::::::::::::::::::::");
   print(response.statusCode);

    if (response.statusCode == 200) {
          Get.to(()=> PaymentSuccessfullScreen());
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
