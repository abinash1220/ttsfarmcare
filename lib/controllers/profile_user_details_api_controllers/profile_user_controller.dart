import 'package:get/get.dart';
import 'package:ttsfarmcare/models/category_model.dart';
import 'package:ttsfarmcare/services/add_address_api_services/get_address_api_service.dart';
import 'package:ttsfarmcare/services/category_api_services/category_api_services.dart';

import "package:dio/dio.dart" as dio;

import '../../models/get_address_model.dart';
import '../../models/profile_user_details_model.dart';
import '../../services/profile_user_details_api_serives/profile_user_api_service.dart';

class GetProfileControllers extends GetxController {
 
  GetProfileApiService getProfileApiService = GetProfileApiService();
   

   User profileDetails = User(id: 1, name: "", email: "", mobileNumber: "", otpCode: "", userType: "", address: "", district: "", mobileVerification: "", status: "", role: "", accessToken: "", createdAt: DateTime.now(), updatedAt: DateTime.now());

    getProfiledetails() async {
    
    dio.Response<dynamic> response = await getProfileApiService.getProfile();
    print(":::::::::::::::::::get address response::::::::::::::::::");
    print(response.statusCode);
    
    ProfileUserDetails profileUserDetails = ProfileUserDetails.fromJson(response.data);

    profileDetails = profileUserDetails.user;

    update();
  }

}
