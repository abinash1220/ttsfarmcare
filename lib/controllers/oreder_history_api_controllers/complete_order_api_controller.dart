import 'package:get/get.dart';
import 'package:ttsfarmcare/models/category_model.dart';
import 'package:ttsfarmcare/models/order_history_model.dart';
import 'package:ttsfarmcare/services/category_api_services/category_api_services.dart';

import "package:dio/dio.dart" as dio;
import 'package:ttsfarmcare/services/history_api_services/complete_order_api_service.dart';
import 'package:ttsfarmcare/services/history_api_services/order_history_api_services.dart';

import '../../models/complete_order_model.dart';

class CompleteOrderControllers extends GetxController {
  
  CompletOrderApiService completOrderApiService = CompletOrderApiService();
   
  List<Datum> completeorder = [];
 
  getCompleteOrder() async {
    dio.Response<dynamic> response = await completOrderApiService.completeOrder();
    print(":::::::::::::::::::completeOrder response::::::::::::::::::");
    print(response.statusCode);
    if (response.statusCode == 200) {
     
     CompleteOrder completeOrder = CompleteOrder.fromJson(response.data);

     completeorder = completeOrder.orders.data;

      update();
    } else {
      print("::::::::::::::::::something went wrong:::::::::::::::::");
    }

    update();
  }
}
