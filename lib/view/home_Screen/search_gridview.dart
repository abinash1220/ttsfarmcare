import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ttsfarmcare/controllers/add_to_cart_api_controllers/add_to_cart_api_controller.dart';
import '../../constants/app_colors.dart';
import '../../controllers/profile_user_details_api_controllers/profile_user_controller.dart';
import '../../models/all_product_model.dart';
import '../../models/product_search_model.dart';
import '../../models/search_product_model.dart';
import '../about_product/about_product.dart';
final  getProfileuser = Get.find<GetProfileControllers>();

class SearchGridview extends StatefulWidget {

  List<Search> ptSearch;

   //List<ProductData> productList;

  SearchGridview({super.key,required this.ptSearch,});

  @override
  State<SearchGridview> createState() => _SearchGridviewState();
}

class _SearchGridviewState extends State<SearchGridview> {

  final addToCartController = Get.find<AddToCartController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 0.70,
          mainAxisSpacing: 10
        ),
        itemCount:widget.ptSearch.length,
         itemBuilder: (context,index){
       return Padding(
         padding: const EdgeInsets.only(left: 0,right: 10),
         child: InkWell(
                  // onTap: () {
                  //   Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => AboutProduct(
                  //               image: "assets/images/asset-3.png",
                  //               productData:widget.productList[index], product_id: 1,
                  //              // name: "Micro Nutrition Valorous",
                  //             )),
                  //   );
                  // },
                  child: Container(
                   decoration: BoxDecoration(
                      border: Border.all(color: Color(0xff517937)),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 5,bottom: 5,left: 5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Center(
                            child: Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: InkWell(
                                onTap: (){
                    //             Navigator.push(
                    //                   context,
                    //                   MaterialPageRoute(
                    //                   builder: (context) => AboutProduct(
                    //                   image: "assets/images/asset-3.png",
                    //                   productData:widget.productList[index], product_id: 1,
                    //            // name: "Micro Nutrition Valorous",
                    //           )),
                    // );
                                },
                                child: Image(image: AssetImage("assets/images/asset-3.png"))),
                            ),
                          ),
                          Center(
                            child: Container(
                              width: 80,
                              child: InkWell(
                                onTap: (){
                    //                 Navigator.push(
                    //                   context,
                    //                   MaterialPageRoute(
                    //                   builder: (context) => AboutProduct(
                    //                   image: "assets/images/asset-3.png",
                    //                   productData:widget.productList[index], product_id: 1,
                    //            // name: "Micro Nutrition Valorous",
                    //           )),
                    // );
                                },
                                child: Text(
                                  widget.ptSearch[index].name,
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.montserrat(
                                    fontSize: 10.sp,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              right: 60,
                            ),
                            child: Text(
                              widget.ptSearch[index].quantity,
                              style: GoogleFonts.montserrat(
                                fontSize: 10.sp,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 5,),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  height: 17,
                                  width: 52,
                                  child: Text(
                                    "Price:${getProfileuser.profileDetails.role == "Retail" ? widget.ptSearch[index].priceRetailer : widget.ptSearch[index].priceCustomer}",
                                    style: GoogleFonts.montserrat(
                                      fontSize: 10.sp,
                                      color: darkGreenColor,
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                    color: Color(0xffECF2F0),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                ),
                                InkWell(
                                  onTap: (){
                                    print("product id is ${widget.ptSearch[index].id}");
                                    addToCartController.addtocart(
                                      productId: "${widget.ptSearch[index].id}",
                                      quantity: "1");
                                  },
                                  child: Container(
                                    height: 25,
                                    width: 25,
                                    child: Icon(
                                      Icons.add,
                                      color: Colors.white,
                                    ),
                                    decoration: BoxDecoration(
                                        color: darkGreenColor,
                                        borderRadius: BorderRadius.circular(15)),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    
                  ),
                ),
       );
      }),
    );
  }
}