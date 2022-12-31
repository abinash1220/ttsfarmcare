import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ttsfarmcare/services/add_to_cart_api_services/add_to_cart_api_service.dart';
import 'package:ttsfarmcare/services/create_order_api_services/create_order_api_service.dart';
import 'package:ttsfarmcare/services/history_api_services/add_quantity_api_service.dart';
import 'package:ttsfarmcare/services/register_api_services/register_api_service.dart';
import 'package:ttsfarmcare/view/profile_screen/profile_screen.dart';
import 'package:ttsfarmcare/view/sign_in_view/sign_up_otp_screen.dart';

import 'package:dio/dio.dart' as dio;
import 'package:ttsfarmcare/view/view_cart_pages/payment_successfully_screen.dart';
import 'package:ttsfarmcare/view/view_cart_pages/place_order_screen.dart';

import '../../constants/app_colors.dart';
import '../../services/add_address_api_services/add_address_api_service.dart';
import '../../view/home_Screen/home_navigationbar.dart';


class AddQuantityController extends GetxController {
  AddQuantityApiService addQuantityApiService = AddQuantityApiService();

  addQuantyval({
    required String cart_id,
    required String no_of_item,
    required String price,
   
  }) async {
    dio.Response<dynamic> response =
        await addQuantityApiService.addQuantity(
          cart_id : cart_id,
          no_of_item: no_of_item,
          price: price
        );
    
   print("::::::::::::::::addtocart statuscode:::::::::::::::::::::");
   print(response.statusCode);
   print(response.data);

    if (response.statusCode == 200) {
         // Get.to(()=> HomeNavigationBar(index: 1,));
          // Get.snackbar("Succesfully Product Added To Cart", "",
          // snackPosition: SnackPosition.BOTTOM,
          // colorText: Colors.white,
          // backgroundColor: darkGreenColor);

    } else if(response.statusCode ==500){
      Get.snackbar("incorrect", response.data,
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
