import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ttsfarmcare/models/complete_order_model.dart';
import 'package:ttsfarmcare/services/add_to_cart_api_services/add_to_cart_api_service.dart';
import 'package:ttsfarmcare/services/all_product_api_services/search_product_api_service.dart';
import 'package:ttsfarmcare/services/create_order_api_services/create_order_api_service.dart';
import 'package:ttsfarmcare/services/register_api_services/register_api_service.dart';
import 'package:ttsfarmcare/view/profile_screen/profile_screen.dart';
import 'package:ttsfarmcare/view/sign_in_view/sign_up_otp_screen.dart';

import 'package:dio/dio.dart' as dio;
import 'package:ttsfarmcare/view/view_cart_pages/payment_successfully_screen.dart';
import 'package:ttsfarmcare/view/view_cart_pages/place_order_screen.dart';

import '../../constants/app_colors.dart';
import '../../models/product_search_model.dart';
import '../../models/search_product_model.dart';
import '../../services/add_address_api_services/add_address_api_service.dart';
import '../../view/home_Screen/home_navigationbar.dart';


class SearchProductController extends GetxController {
  SearchProductApiService searchProductApiService = SearchProductApiService();

  List<Search> ptSearch = [];

  searchProduct({
    required String search,
   
  }) async {
    dio.Response<dynamic> response =
        await searchProductApiService.searchProductApiService(
         search: search
        );
    
   print("::::::::::::::::search api statuscode:::::::::::::::::::::");
   print(response.statusCode);
    print(response.data);

    if (response.statusCode == 200) {
        SearchProduct searchPt = SearchProduct.fromJson(response.data);

        ptSearch = searchPt.product;
    } else {
      print("Something went worng");
    }
    update();
  }
}
