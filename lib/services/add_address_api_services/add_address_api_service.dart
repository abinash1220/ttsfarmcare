import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ttsfarmcare/constants/user_role.dart';
import 'package:ttsfarmcare/services/base_api_url_services/base_urls.dart';

class AddAddressApiService extends BaseApiService {
  addAddressServices({
    required String type,
    required String street,
    required String area,
    required String landmark,
    required String city,
    required String state,
    required String pincode,
  }) async {
    //api result will store in this variable
    dynamic responseJson;

    try {
      //api calls here

      var dio = Dio();
      final prefs = await SharedPreferences.getInstance();
      String? authtoken = prefs.getString("auth_token");

      var response = await dio.post(addAddressUrl,
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
              "type":type,
              "street":street,
              "area":area,
              "landmark":landmark,
              "city":city,
              "state":state,
              "pincode":pincode
});
      print("::::::::::::::::status Addrss post code::::::::::::::");
      print(response.statusCode);

      responseJson = response;
    } catch (e) {
      print(e);
    }

    return responseJson;
  }
}
