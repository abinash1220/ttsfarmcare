import 'package:get/get.dart';
import 'package:http/http.dart';
import 'package:ttsfarmcare/models/category_model.dart';
import 'package:ttsfarmcare/services/add_address_api_services/get_address_api_service.dart';
import 'package:ttsfarmcare/services/category_api_services/category_api_services.dart';
import "package:dio/dio.dart" as dio;
import '../../models/address_model.dart';
import '../../models/district_list_model.dart';
import '../../models/get_address_model.dart';
import '../../services/add_address_api_services/get_district_list_services.dart';

class GetDistrictController extends GetxController {
 
  GetDistrictApiService getDistrictApiService = GetDistrictApiService();

  List<DistrictList> districtlist = [];

  getDistrictList() async {
    dio.Response<dynamic> response = await getDistrictApiService.getDistrict();
    print(":::::::::::::::::::get district response::::::::::::::::::");
    print(response.statusCode);
    print(response.data);
    if (response.statusCode == 200) {

      List<DistrictList> tempDistrict = districtListFromJson(response.data);

      districtlist = tempDistrict;

      update();
      
    } else {
      print("::::::::::::::::::something went wrong:::::::::::::::::");
    }
  }
}
