import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ttsfarmcare/services/register_api_services/register_api_service.dart';
import 'package:ttsfarmcare/view/sign_in_view/sign_up_otp_screen.dart';

import 'package:dio/dio.dart' as dio;

import '../../services/history_api_services/product_rating_api_service.dart';
import '../../services/sent_otp_api_services/sent_otp_api_service.dart';
import '../../view/sign_in_view/signUp_sucessfully.dart';

class RatingController extends GetxController {
 RatingApiService ratingApiService = RatingApiService();

  productRating({
   
    required String product_id,
    required String rating,
    
  }) async {
   // final prefs = await SharedPreferences.getInstance();
    dio.Response<dynamic> response =
        await ratingApiService.ratingApiServices(
            product_id: product_id,
            rating: rating,
        );
           
           print(":::::::::rating status code:::::::::::"); 
      print(response.statusCode);
      print(response.data);
    if (response.statusCode == 200) {
    
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
