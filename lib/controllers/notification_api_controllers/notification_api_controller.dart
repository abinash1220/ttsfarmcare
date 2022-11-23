import 'package:get/get.dart';
import 'package:ttsfarmcare/models/category_model.dart';
import 'package:ttsfarmcare/models/order_history_model.dart';
import 'package:ttsfarmcare/services/category_api_services/category_api_services.dart';

import "package:dio/dio.dart" as dio;
import 'package:ttsfarmcare/services/history_api_services/order_history_api_services.dart';
import 'package:ttsfarmcare/services/notification_api_services/notification_api_service.dart';

import '../../models/notification_model.dart';

class NotificationControllers extends GetxController {
  
  NotificationApiService notificationApiService = NotificationApiService();
   
  List<Notify> notify = [];
 
  getNotification() async {
    dio.Response<dynamic> response = await notificationApiService.notification();
    print(":::::::::::::::::::notification response::::::::::::::::::");
    print(response.statusCode);
    if (response.statusCode == 200) {
     
     Notification notificationt = Notification.fromJson(response.data);

     notify = notificationt.notification.data;

      update();
    } else {
      print("::::::::::::::::::something went wrong:::::::::::::::::");
    }

    update();
  }
}
