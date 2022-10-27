import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../services/register_api_service.dart';
import '../view/sign_in_view/mobile_number.dart';

class RegistrationController extends GetxController {
  TextEditingController usernamecontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController addresscontroller = TextEditingController();
  TextEditingController districtcontroller = TextEditingController();
  TextEditingController companynamecontroller = TextEditingController();
  TextEditingController gstnumbercontroller = TextEditingController();

  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  Future<void> register() async {
    try {
      var header = {"Content-Type": "application/json"};
      var url = Uri.parse(RegistrationService.baseUrl);
      Map body = {
        "name": usernamecontroller.text,
        "company_name": companynamecontroller.text,
        "email": emailcontroller.text.trim(),
        "password": passwordcontroller.text,
        "address": addresscontroller.text,
        "gst_number": gstnumbercontroller.text,
        "district": districtcontroller.text
      };

      http.Response response =
          await http.post(url, body: jsonEncode(body), headers: header);

      print("_______________print here.;;;;;;;;;;;;;;;;;;;;;;;;;;;;;");
      print(response.statusCode);
      print(response.body);

      if (response.statusCode == 200) {
        final json = jsonDecode(response.body);
        if (json['code'] == 0) {
          var token = json['data']['Token'];
          print(token);
          final SharedPreferences prefs = await _prefs;
          await prefs.setString('token', token);
          usernamecontroller.clear();
          companynamecontroller.clear();
          emailcontroller.clear();
          passwordcontroller.clear();
          addresscontroller.clear();
          gstnumbercontroller.clear();
          districtcontroller.clear();
          // Get.to(() => MobileNumber());
        } else {
          throw jsonDecode(response.body)['message'] ?? "unknown error occured";
        }
      } else {
        throw jsonDecode(response.body)['message'] ?? "unknown error occured";
      }
    } catch (e) {}
  }
}
