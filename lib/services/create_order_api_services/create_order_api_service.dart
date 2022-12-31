import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ttsfarmcare/constants/user_role.dart';
import 'package:ttsfarmcare/services/base_api_url_services/base_urls.dart';

class CreateOrderApiService extends BaseApiService {
  createOrderServices({
    required String product_id,
    required String no_of_item,
    required String amount,
    required String payment_method_id,
    required String address_id,
    required String payment_status,
    required String cart_id,
  }) async {
    //api result will store in this variable
    dynamic responseJson;

    try {
      //api calls here

      var dio = Dio();
      final prefs = await SharedPreferences.getInstance();
      String? authtoken = prefs.getString("auth_token");

      var response = await dio.post(createOrderUrl,
          options: Options(
              headers: {
                'Accept': 'application/json',
                'Authorization': 'Bearer $authtoken'
              },

              followRedirects: false,
              validateStatus: (status) {
                return status! <= 500;
              }),
          data: {
              
                "product_id":product_id,
                "no_of_item":no_of_item,
                "amount":amount,
                "payment_method_id":payment_method_id,
                "address_id":address_id,
                "payment_status":payment_status,
                "cart_id":cart_id

});
      print("::::::::::::::::create order sts ::::::::::::::");
      print(response.statusCode);

      responseJson = response;
    } catch (e) {
      print(e);
    }

    return responseJson;
  }
}
