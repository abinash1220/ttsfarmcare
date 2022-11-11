import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ttsfarmcare/constants/user_role.dart';
import 'package:ttsfarmcare/services/base_api_url_services/base_urls.dart';

class EditProfileApiService extends BaseApiService {
  EditProfileServices({
    required String name,
    required String email,
    required String mobile_number,
    required String company_name,
    required String gst_no,
    required String address,
    required String district,
  }) async {
    //api result will store in this variable
    dynamic responseJson;

    try {
      //api calls here

      var dio = Dio();
      final prefs = await SharedPreferences.getInstance();
      String? authtoken = prefs.getString("auth_token");

      var response = await dio.post(editProfileUrl,
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
              "name":name,
              "email":email,
              "mobile_number":mobile_number,
              "company_name":company_name,
              "gst_no":gst_no,
              "address":address,
              "district":district
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
