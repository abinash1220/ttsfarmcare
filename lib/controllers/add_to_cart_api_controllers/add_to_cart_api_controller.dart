import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ttsfarmcare/services/add_to_cart_api_services/add_to_cart_api_service.dart';
import 'package:ttsfarmcare/services/create_order_api_services/create_order_api_service.dart';
import 'package:ttsfarmcare/services/register_api_services/register_api_service.dart';
import 'package:ttsfarmcare/view/profile_screen/profile_screen.dart';
import 'package:ttsfarmcare/view/sign_in_view/sign_up_otp_screen.dart';

import 'package:dio/dio.dart' as dio;
import 'package:ttsfarmcare/view/view_cart_pages/payment_successfully_screen.dart';
import 'package:ttsfarmcare/view/view_cart_pages/place_order_screen.dart';

import '../../constants/app_colors.dart';
import '../../services/add_address_api_services/add_address_api_service.dart';
import '../../view/home_Screen/home_navigationbar.dart';


class AddToCartController extends GetxController {
  AddToCartApiService addToCartApiService = AddToCartApiService();

  addtocart({
    required String productId,
    required String quantity,
   
  }) async {
    dio.Response<dynamic> response =
        await addToCartApiService.addToCartApiService(
          productId: productId,
          quantity: quantity,
        );
    
   print("::::::::::::::::addtocart statuscode:::::::::::::::::::::");
   print(response.statusCode);

    if (response.statusCode == 200) {
          Get.to(()=> HomeNavigationBar(index: 1,));
          Get.snackbar("Succesfully Product Added To Cart", "",
          snackPosition: SnackPosition.BOTTOM,
          colorText: Colors.white,
          backgroundColor: darkGreenColor);

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
