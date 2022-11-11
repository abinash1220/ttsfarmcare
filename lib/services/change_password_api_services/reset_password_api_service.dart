import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ttsfarmcare/constants/user_role.dart';
import 'package:ttsfarmcare/services/base_api_url_services/base_urls.dart';

class ResetPasswordApiService extends BaseApiService {
  resetPasswordServices({
    required String original_password,
    required String new_password,
    required String confirm_password,
  }) async {
    //api result will store in this variable
    dynamic responseJson;

    try {
      //api calls here

      var dio = Dio();
      final prefs = await SharedPreferences.getInstance();
      String? authtoken = prefs.getString("auth_token");

      var response = await dio.post(resetPasswordUrl,
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
               "original_password":original_password,
               "new_password":new_password,
               "confirm_password":confirm_password         
});
      print("::::::::::::::::reset password status code::::::::::::::");
      print(response.statusCode);

      responseJson = response;
    } catch (e) {
      print(e);
    }

    return responseJson;
  }
}
