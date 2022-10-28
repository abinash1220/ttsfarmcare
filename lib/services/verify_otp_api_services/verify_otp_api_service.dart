import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ttsfarmcare/constants/user_role.dart';
import 'package:ttsfarmcare/services/base_api_url_services/base_urls.dart';

class VerifyOtpApiService extends BaseApiService {
  verifyOtpApiServices({
    required String mobile_number,
    required String otp,
  }) async {
    //api result will store in this variable
    dynamic responseJson;

    try {
      //api calls here

      var dio = Dio();
      // final prefs = await SharedPreferences.getInstance();
      // String? authtoken = prefs.getString("auth_token");

      var response = await dio.post(verifyOtpUrl,
          options: Options(
              headers: {
                'Accept': 'application/json',
              },
              followRedirects: false,
              validateStatus: (status) {
                return status! <= 500;
              }),
          data: {
          
            "mobile_number": mobile_number,
            "otp": otp,
           
          });
      print("::::::::::::::::status code::::::::::::::");
      print(response.statusCode);

      responseJson = response;
    } catch (e) {
      print(e);
    }

    return responseJson;
  }
}
