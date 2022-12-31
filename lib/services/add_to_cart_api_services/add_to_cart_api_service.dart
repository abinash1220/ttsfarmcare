import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ttsfarmcare/constants/user_role.dart';
import 'package:ttsfarmcare/services/base_api_url_services/base_urls.dart';

class AddToCartApiService extends BaseApiService {
  addToCartApiService({
    required String productId,
    required String quantity,
    required String price,
    required String no_of_item,
    
  }) async {
    //api result will store in this variable
    dynamic responseJson;

    try {
      //api calls here

      var dio = Dio();
      final prefs = await SharedPreferences.getInstance();
      String? authtoken = prefs.getString("auth_token");

      var response = await dio.post(addtoCartUrl,
          options: Options(
              headers: {
                'Accept': 'application/json',
                'Authorization': 'Bearer $authtoken'
              },

              followRedirects: false,
              validateStatus: (status) {
                return status! <= 500;
              }),
          data:{
             "product_id":productId,
             "quantity":quantity,
             "price":price,
             "no_of_item":no_of_item
          });
      print("::::::::::::::::addtocart status code::::::::::::::");
      print(response.statusCode);
      responseJson = response;
    } catch (e) {
      print(e);
    }

    return responseJson;
  }
}
