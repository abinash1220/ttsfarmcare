import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ttsfarmcare/controllers/all_product_api_controllers/all_product_api_controller.dart';
import 'package:ttsfarmcare/controllers/all_product_api_controllers/search_product_api_controller.dart';
import 'package:ttsfarmcare/models/search_product_model.dart';
import 'package:ttsfarmcare/view/home_Screen/search_gridview.dart';

import '../../controllers/home_Controllers.dart';
import 'home_navigationbar.dart';

class SearchProduct extends StatefulWidget {
  const SearchProduct({super.key, });

  @override
  State<SearchProduct> createState() => _SearchProductState();
}

class _SearchProductState extends State<SearchProduct> {

  final homeController = Get.find<HomeControllers>();

  final allProductController = Get.find<AllProductController>();

  final searchController = Get.find<SearchProductController>();

  @override
  void initState() {
    super.initState();
     WidgetsBinding.instance
        .addPostFrameCallback((_) => getdata());
  }

  getdata(){
  //  searchController.searchProduct(search:);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: InkWell(
              onTap: () {
                homeController.bottomIcon(1);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomeNavigationBar()),
                );
              },
              child: Icon(
                Icons.arrow_back,
              )),
          title: SizedBox(
                height: 35.h,
                width: 270.w,
                child: TextFormField(
                  onChanged: (val){
                         searchController.searchProduct(search:val);
                  },
                  decoration: InputDecoration(
                    isDense: true,
                    filled: true,
                    fillColor: Color(0xffFFFFFF),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    hintText: "Search product",
                    contentPadding: EdgeInsets.only(top: 5),
                    prefixIcon: Icon(Icons.search),
                    hintStyle: GoogleFonts.montserrat(
                      color: const Color(0xff517937),
                      fontSize: 14.sp,
                    ),
                  ),
                ),
              ),
          titleSpacing: -10,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Image(
                  height: 45,
                  width: 45,
                  image: AssetImage("assets/images/Group 3470.png")),
            ),
          ],
          toolbarHeight: 92,
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          flexibleSpace: Container(
            color: Colors.white,
            child: Container(
              height: 300,
              decoration: BoxDecoration(
                  color: Color(0xff289445),
                  borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(40))),
            ),
          )),
          body: Container(
            decoration: BoxDecoration(
              color: Color(0xff289445),
            ),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(25),
                     )),
                     child: Padding(
                       padding: const EdgeInsets.only(top: 20,left: 20),
                       child: ListView(
                        children: [
                          Text("Recent Search",
                           style: GoogleFonts.montserrat(
                                  fontSize: 20.sp,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                          SizedBox(height: 10,),
                           Container(
                            height: 550,
                             child: GetBuilder<SearchProductController>(
                      builder: (_) {
                        return SearchGridview(ptSearch:searchController.ptSearch,);
                      }
                    ),
                           ),
                        ],
                       ),
                     ),
                     
    ),
    
    ),
    
    );
  }
}