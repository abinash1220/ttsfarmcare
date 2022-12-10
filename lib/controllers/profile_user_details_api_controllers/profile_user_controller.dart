import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ttsfarmcare/models/category_model.dart';
import 'package:ttsfarmcare/services/add_address_api_services/get_address_api_service.dart';
import 'package:ttsfarmcare/services/category_api_services/category_api_services.dart';

import "package:dio/dio.dart" as dio;
import 'package:ttsfarmcare/view/profile_screen/profile_screen.dart';

import '../../models/get_address_model.dart';
import '../../models/profile_user_details_model.dart';
import '../../services/profile_user_details_api_serives/profile_user_api_service.dart';
import '../../view/landing_page/landing_screen.dart';

class GetProfileControllers extends GetxController {
  GetProfileApiService getProfileApiService = GetProfileApiService();

  User profileDetails = User(
      id: 1,
      name: "",
      email: "",
      mobileNumber: "",
      otpCode: "",
      userType: "",
      address: "",
      district: "",
      mobileVerification: "",
      status: "",
      role: "",
      accessToken: "",
      createdAt: DateTime.now(),
      updatedAt: DateTime.now());

  getProfiledetails() async {
    dio.Response<dynamic> response = await getProfileApiService.getProfile();
    print(":::::::::::::::::::get profile response::::::::::::::::::");
    print(response.statusCode);
    print(response.data);

    if (response.statusCode == 500) {
      logOutUser();
      print("user:::::;;issue::::::::::;;");
    }

    ProfileUserDetails profileUserDetails =
        ProfileUserDetails.fromJson(response.data);

    profileDetails = profileUserDetails.user;

    update();
  }

  logOutUser() async {
    final prefs = await SharedPreferences.getInstance();

    await prefs.setString("auth_token", "null");

    print("::::::::::user issue");

    Get.offAll(() => LandingScreen());
  }
}
