import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ttsfarmcare/controllers/add_to_cart_api_controllers/add_to_cart_api_controller.dart';
import '../../constants/app_colors.dart';
import '../../models/all_product_model.dart';
import '../about_product/about_product.dart';

class ProductGridView extends StatefulWidget {

  List<ProductData> productList;

  ProductGridView({super.key,required this.productList});

  @override
  State<ProductGridView> createState() => _ProductGridViewState();
}

class _ProductGridViewState extends State<ProductGridView> {

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
        itemCount:widget.productList.length,
         itemBuilder: (context,index){
       return Padding(
         padding: const EdgeInsets.only(left: 10,right: 10),
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
                                  Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                        builder: (context) => AboutProduct(
                                        image: "assets/images/asset-3.png",
                                        productData:widget.productList[index], product_id: 1,
                                 // name: "Micro Nutrition Valorous",
                                )),
                    );
                                },
                                child: Image(image: AssetImage("assets/images/asset-3.png"))),
                            ),
                          ),
                          Center(
                            child: Container(
                              width: 80,
                              child: InkWell(
                                onTap: (){
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                        builder: (context) => AboutProduct(
                                        image: "assets/images/asset-3.png",
                                        productData:widget.productList[index], product_id: 1,
                                 // name: "Micro Nutrition Valorous",
                                )),
                    );
                                },
                                child: Text(
                                  widget.productList[index].name,
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
                          Text(
                            widget.productList[index].quantity,
                            textDirection: TextDirection.ltr,
                            style: GoogleFonts.montserrat(
                              fontSize: 10.sp,
                              
                              color: Colors.black,
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
                                    "Price:${widget.productList[index].price}",
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
                                    print("product id is ${widget.productList[index].id}");
                                    addToCartController.addtocart(
                                      productId: "${widget.productList[index].id}",
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