import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ttsfarmcare/view/home_Screen/product_gridView.dart';
import 'package:ttsfarmcare/view/home_Screen/search_screen.dart';

import '../../controllers/all_product_api_controllers/all_product_api_controller.dart';
import '../../controllers/home_Controllers.dart';
import '../order_history_page/order_history.dart';
import '../profile_screen/profile_screen.dart';
import '../view_cart_pages/view_cart_screen.dart';
import 'home_page.dart';

class ProductListView extends StatefulWidget {
  const ProductListView({super.key});

  @override
  State<ProductListView> createState() => _ProductListViewState();
}

class _ProductListViewState extends State<ProductListView> {

  final homeController = Get.find<HomeControllers>();

  final allProductController = Get.find<AllProductController>();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
          Get.back();
        },
          child: Icon(Icons.arrow_back,)
        ),
        title: Text("Product View All",
            style: GoogleFonts.montserrat(
              fontWeight: FontWeight.bold,
            ),
            ),
            titleSpacing: -10,
            actions: [
               Image(image: AssetImage("assets/images/Group 3466.png")),
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
                  borderRadius: BorderRadius.only(topRight: Radius.circular(25),bottomRight:Radius.circular(25) )),
                  child: Column(
                    children: [
                        Padding(
                    padding:
                        const EdgeInsets.only(top:20,left: 15, right: 15),
                    child: TextField(
                       onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SearchProduct()),
                            );
                          },
                          readOnly: true,
                      decoration: InputDecoration(
                        isDense: true,
                        // filled: true,
                        // fillColor: Color(0xffECF2F0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        hintText: "Search product",
                        contentPadding: EdgeInsets.only(top: 5),
                        prefixIcon: Icon(
                          Icons.search,
                         // color: darkGreenColor,
                          size: 20,
                        ),
                        hintStyle: TextStyle(
                          //color: const Color(0xff517937),
                          fontSize: 14.sp,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(
              height: size.height*0.65,
              alignment: Alignment.topCenter,
              child: ListView(
                shrinkWrap: true,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Text(
                            "Product Deals",
                             style: GoogleFonts.montserrat(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                      ),
                      SizedBox(height: 10,),
                      GetBuilder<AllProductController>(
                      builder: (_) {
                        return ProductGridView(productList:allProductController.productList,);
                      }
                    ),
                    ]
                  ),
                ]
              )
                  ),

 

                  ]),
            ),
            ),
           
    );
  }
}