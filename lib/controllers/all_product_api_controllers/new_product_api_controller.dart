import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ttsfarmcare/services/all_product_api_services/new_product_api_services.dart';
import 'package:ttsfarmcare/services/register_api_services/register_api_service.dart';
import 'package:ttsfarmcare/view/sign_in_view/sign_up_otp_screen.dart';

import 'package:dio/dio.dart' as dio;

import '../../models/all_product_model.dart';
import '../../models/get_all_products_model.dart';
import '../../models/new_product_model.dart';
import '../../services/all_product_api_services/all_product_api_service.dart';
import '../../services/sent_otp_api_services/sent_otp_api_service.dart';
import '../../view/sign_in_view/signUp_sucessfully.dart';

class NewProductController extends GetxController {
NewProductListServices newProductListServices = NewProductListServices();

 List<Products> productData = [];


  newProductList(int category_id) async {
    dio.Response<dynamic> response = await newProductListServices.newProduct(category_id:category_id.toString());
    print(":::::::::::::::::::new Product response::::::::::::::::::");
    print(response.statusCode);
    if (response.statusCode == 200) {
      NewProductList productslist = NewProductList.fromJson(response.data);

      productData = productslist.data;

      update();
    } else {
      print("::::::::::::::::::something went wrong:::::::::::::::::");
    }

    update();
  }

 }
