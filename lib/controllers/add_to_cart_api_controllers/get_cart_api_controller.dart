import 'package:get/get.dart';
import 'package:ttsfarmcare/controllers/profile_user_details_api_controllers/profile_user_controller.dart';
import 'package:ttsfarmcare/models/category_model.dart';
import 'package:ttsfarmcare/models/order_history_model.dart';
import 'package:ttsfarmcare/services/add_to_cart_api_services/get_cart_api_service.dart';
import 'package:ttsfarmcare/services/add_to_cart_api_services/remove_from_cart_api.dart';
import 'package:ttsfarmcare/services/category_api_services/category_api_services.dart';

import "package:dio/dio.dart" as dio;
import 'package:ttsfarmcare/services/history_api_services/complete_order_api_service.dart';
import 'package:ttsfarmcare/services/history_api_services/order_history_api_services.dart';

import '../../models/complete_order_model.dart';
import '../../models/get_cart_details_model.dart';
import '../../models/get_cart_model.dart';

class GetCartControllers extends GetxController {
  GetCartApiService getCartApiService = GetCartApiService();
  RemoveFromcartApiServices removeFromCardApi = RemoveFromcartApiServices();

  List<Cartdetail> getCartDetails = [];

  RxInt totalitem = 0.obs;

  RxDouble totalPrice = 0.0.obs;

  getCart() async {
    dio.Response<dynamic> response =
        await getCartApiService.getCartApiService();
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
  
  String getPrice(String price,String quantity){
   double tprice = double.parse(price);
   int qty = int.parse(quantity);
   double totalPrice = tprice * qty;
  
  return totalPrice.toString();
}
  
  


  calculate(List<Cartdetail> getCartDetails) {
    double temp = 0.0;
    totalitem(getCartDetails.length);

    for (int a = 0; a < getCartDetails.length; a++) {
      // double price  = 0;
      print("vvvvvvvvvvvvvvvvvvvvvvvvvvvv");
      if (Get.find<GetProfileControllers>().profileDetails.role == "Retail") {
        print("ggggggggggggggg");
        double amount = double.parse(getCartDetails[a].price);
        double quantity = double.parse(getCartDetails[a].no_of_item);
        print("price = $amount * $quantity  = ${amount * quantity} ");
        double ptemp = amount * quantity;
        print(ptemp);
        temp += ptemp;
      } else {
        double price = double.parse(getCartDetails[a].price);
        print("ptriceeeeee$price");
        double quantity = double.parse(getCartDetails[a].no_of_item);
        print("price = $price * $quantity  = ${price * quantity} ");
        double ptemp = price * quantity;
        print(ptemp);
        temp += ptemp;
      }
    }
    print(temp);
    totalPrice(temp);
    print(totalPrice);
  }

  removeFromCart(String cartId) async {
    var response = await removeFromCardApi.removeFromcartApi(cartId);
    print(response);
  }
}
