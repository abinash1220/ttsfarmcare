import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ttsfarmcare/constants/user_role.dart';
import 'package:ttsfarmcare/services/base_api_url_services/base_urls.dart';

class RegisterApiService extends BaseApiService {
  registerApiServices({
    required String name,
    dynamic companyName,
    required String email,
    required String mobile_number,
    required String password,
    required String address,
    dynamic gst_number,
    required String district,
  }) async {
    //api result will store in this variable
    dynamic responseJson;

    try {
      //api calls here

      var dio = Dio();
      // final prefs = await SharedPreferences.getInstance();
      // String? authtoken = prefs.getString("auth_token");

      var response = await dio.post(registerURL,
          options: Options(
              headers: {
                'Accept': 'application/json',
              },
              followRedirects: false,
              validateStatus: (status) {
                return status! <= 500;
              }),
          data: {
            "name": name,
            "company_name": companyName,
            "email": email,
            "mobile_number": mobile_number,
            "password": password,
            "address": address,
            "gst_number": gst_number,
            "district": district
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
