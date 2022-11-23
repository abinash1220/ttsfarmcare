import 'package:get/get.dart';
import 'package:ttsfarmcare/models/category_model.dart';
import 'package:ttsfarmcare/models/order_history_model.dart';
import 'package:ttsfarmcare/services/category_api_services/category_api_services.dart';

import "package:dio/dio.dart" as dio;
import 'package:ttsfarmcare/services/history_api_services/order_history_api_services.dart';

class OrderHistoryControllers extends GetxController {
  
  OrderHistoryApiService orderHistoryApiService = OrderHistoryApiService();
   
  List<OrderData> orderdata = [];
 
  getOrderHistory() async {
    orderdata.clear();
    dio.Response<dynamic> response = await orderHistoryApiService.OrderHistory();
    print(":::::::::::::::::::order history response::::::::::::::::::");
    print(response.statusCode);
    if (response.statusCode == 200) {
     
     OrderHistory orderHistory = OrderHistory.fromJson(response.data);

    // orderdata = orderHistory.orders.data;

     orderHistory.orders.data.forEach((element) { 
      if(element.product.name != ""){
        orderdata.add(element);
      }
     });

      update();
    } else {
      print("::::::::::::::::::something went wrong:::::::::::::::::");
    }

    update();
  }
}
