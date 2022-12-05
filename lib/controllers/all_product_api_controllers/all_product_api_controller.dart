import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ttsfarmcare/services/register_api_services/register_api_service.dart';
import 'package:ttsfarmcare/view/sign_in_view/sign_up_otp_screen.dart';

import 'package:dio/dio.dart' as dio;

import '../../models/all_product_model.dart';
import '../../models/get_all_products_model.dart';
import '../../services/all_product_api_services/all_product_api_service.dart';
import '../../services/sent_otp_api_services/sent_otp_api_service.dart';
import '../../view/sign_in_view/signUp_sucessfully.dart';

class AllProductController extends GetxController {
 AllProductApiService allProductApiServices = AllProductApiService();

 List<Products> productList = [];


  allProducts(int category_id) async {
    print(";;;;;;;;;;;;;;;;;;;;product api;;;;;;;;;");
    //(productList.length);
    dio.Response<dynamic> response = await allProductApiServices.allProductApiServices(category_id: category_id.toString());
    print(":::::::::::::::::::all Products response::::::::::::::::::");
    print(response.statusCode);
    if (response.statusCode == 200) {
      AllProducts products = AllProducts.fromJson(response.data);

      productList = products.data;
      print("product length;;;;;;;;;;;;;;;;;;;;;");
      print(productList.length);
      update();
    } else {
      print("::::::::::::::::::something went wrong:::::::::::::::::");
    }

    update();
  }

 }
