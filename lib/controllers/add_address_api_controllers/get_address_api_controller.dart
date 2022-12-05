import 'package:get/get.dart';
import 'package:ttsfarmcare/models/category_model.dart';
import 'package:ttsfarmcare/services/add_address_api_services/get_address_api_service.dart';
import 'package:ttsfarmcare/services/category_api_services/category_api_services.dart';

import "package:dio/dio.dart" as dio;

import '../../models/address_model.dart';
import '../../models/get_address_model.dart';

class GetAddressControllers extends GetxController {
 
  GetAddressApiService getAddressApi = GetAddressApiService();

Future<GetAddress> getAllAddress() async {
    List<GetAddress> addressList = [];
      GetAddress address = GetAddress(id: 0, userId: "", type: "", location: "", street: "", area: "", landmark: "", city: "", state: "", pincode: "", activeStatus: "", createdAt: DateTime.now(), updatedAt: DateTime.now(),
       users: Users(accessToken: "",address: "",companyName: "",createdAt: DateTime.now(),district: "",email: "",id: 0,mobileNumber: "",mobileVerification: "",name: "",otpCode: "",status: "",updatedAt: DateTime.now(),userType: "",aadharNo: "",dateOfBirth: "",deletedAt: DateTime.now(),emailVerifiedAt: "",gstNumber: "",photo: "",role: "",));

    dio.Response<dynamic> response = await getAddressApi.getAddress();
    print(":::::::::::::::::::get address response::::::::::::::::::");
    print(response.statusCode);
    print(response.data);
    if (response.statusCode == 200) {
      // List<Address> address = addressFromJson(response.data.toString());

      // addressList = address;

      List<dynamic> addressl = response.data;

    address = GetAddress.fromJson(addressl.last);
      
    } else {
      print("::::::::::::::::::something went wrong:::::::::::::::::");
    }

   return address;
  }
}
