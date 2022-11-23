import 'package:get/get.dart';
import 'package:ttsfarmcare/models/category_model.dart';
import 'package:ttsfarmcare/models/order_history_model.dart';
import 'package:ttsfarmcare/services/add_to_cart_api_services/get_cart_api_service.dart';
import 'package:ttsfarmcare/services/category_api_services/category_api_services.dart';

import "package:dio/dio.dart" as dio;
import 'package:ttsfarmcare/services/history_api_services/complete_order_api_service.dart';
import 'package:ttsfarmcare/services/history_api_services/order_history_api_services.dart';

import '../../models/complete_order_model.dart';
import '../../models/get_cart_model.dart';

class GetCartControllers extends GetxController {
  
  GetCartApiService getCartApiService = GetCartApiService();
   
  List<Cartdetail> getCartDetails = [];

  RxInt totalitem = 0.obs;

  RxDouble totalPrice = 0.0.obs;
 
  getCart() async {
    dio.Response<dynamic> response = await getCartApiService.getCartApiService();
    print(":::::::::::::::::::get cart response::::::::::::::::::");
    print(response.statusCode);
    if (response.statusCode == 200) {
     ViewCart viewCart = ViewCart.fromJson(response.data);

     getCartDetails = viewCart.cartdetails;
        
      calculate(getCartDetails);

      update();
    } else {
      print("::::::::::::::::::something went wrong:::::::::::::::::");
    }

    update();
  }

  calculate(List<Cartdetail> getCartDetails) {
   
   double temp = 0.0;
   totalitem(getCartDetails.length);

   for(int a = 0; a < getCartDetails.length; a++){
    double price = double.parse(getCartDetails[a].product.price);
    double quantity = double.parse(getCartDetails[a].quantity);
       temp += price*quantity;

   }
   
   totalPrice(temp);


   update();
      
  }

}
