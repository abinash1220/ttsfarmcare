import 'package:get/get.dart';
import 'package:ttsfarmcare/models/category_model.dart';
import 'package:ttsfarmcare/services/category_api_services/category_api_services.dart';

import "package:dio/dio.dart" as dio;

class HomeControllers extends GetxController {
  RxInt home = 1.obs;
  RxInt bottomIcon = 1.obs;

  List<CategoryData> categoryList = [];

  CategoryApiServices categoryApi = CategoryApiServices();

  getAllCategorys() async {
    dio.Response<dynamic> response = await categoryApi.getCategory();
    print(":::::::::::::::::::category response::::::::::::::::::");
    print(response.statusCode);
    if (response.statusCode == 200) {
      CategoryModel categoryModel = CategoryModel.fromJson(response.data);

      categoryList = categoryModel.data;
      update();
    } else {
      print("::::::::::::::::::something went wrong:::::::::::::::::");
    }

    update();
  }
}
