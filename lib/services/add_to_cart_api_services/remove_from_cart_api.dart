import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ttsfarmcare/constants/user_role.dart';
import 'package:ttsfarmcare/models/order_history_model.dart';
import 'package:ttsfarmcare/services/base_api_url_services/base_urls.dart';

class RemoveFromcartApiServices extends BaseApiService {
  removeFromcartApi(String cartId) async {
    //api result will store in this variable
    dynamic responseJson;

    try {
      //api calls here

      var dio = Dio();
      final prefs = await SharedPreferences.getInstance();
      String? authtoken = prefs.getString("auth_token");

      var response = await dio.post(removeFromCartURL,
          options: Options(
              headers: {
                'Accept': 'application/json',
                'Authorization': 'Bearer $authtoken'
              },
              followRedirects: false,
              validateStatus: (status) {
                return status! <= 500;
              }),
          data: {"cart_id": cartId});
      print("::::::::::::::::get Cart status code::::::::::::::");
      print(response.statusCode);

      responseJson = response.data;
    } catch (e) {
      print(e);
    }

    return responseJson;
  }
}
