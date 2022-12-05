import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:ttsfarmcare/controllers/add_to_cart_api_controllers/add_to_cart_api_controller.dart';
import 'package:ttsfarmcare/controllers/add_to_cart_api_controllers/get_cart_api_controller.dart';
import 'package:ttsfarmcare/controllers/oreder_history_api_controllers/product_rating_api_controller.dart';
import 'package:ttsfarmcare/models/all_product_model.dart';

import '../../constants/app_colors.dart';
import '../../controllers/about_product_controller.dart';
import '../../controllers/home_Controllers.dart';
import '../../controllers/profile_user_details_api_controllers/profile_user_controller.dart';
import '../../models/get_all_products_model.dart';
import '../home_Screen/home_navigationbar.dart';
import '../view_cart_pages/view_cart_screen.dart';

class AboutProduct extends StatefulWidget {
  int product_id;
  String image;
  Products productData;
  AboutProduct({required this.image, required this.productData,required this.product_id});

  @override
  State<AboutProduct> createState() => _AboutProductState();
}

class _AboutProductState extends State<AboutProduct> {
  PageController _controller =
      PageController(viewportFraction: 0.8, keepPage: true);

      final homeController = Get.find<HomeControllers>();

      final ratingController = Get.find<RatingController>();

      final getCartController = Get.find<GetCartControllers>();

      final addToCartController = Get.find<AddToCartController>();

  final AboutProductController c = Get.put(AboutProductController());

  final  getProfileuser = Get.find<GetProfileControllers>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
   
    //homeController.bottomIcon(2);
     WidgetsBinding.instance
        .addPostFrameCallback((_) => setDefault());
  }

  setDefault() {

    c.productcount(0);
    c.prices(00.00);
    ratingController.productRating(product_id: "", rating:"");
    
  }
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    final pages = List.generate(
      2,
      (index) => Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(widget.image),
            fit: BoxFit.contain,
          ),
        ),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
          Get.back();
        },
          child: Icon(Icons.arrow_back,)
        ),
        title: Text(
            "About Product",
            style: GoogleFonts.montserrat(
              fontWeight: FontWeight.bold,
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
          body:LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          print(constraints.maxHeight);
              return Container(
                   decoration: BoxDecoration(
                  color: Color(0xff289445),
        ),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(topRight: Radius.circular(30),bottomRight:Radius.circular(30))),
                      child: Column(
                        children: [
                          Container(
                            height:constraints.maxHeight>510 ? size.height*0.76 : size.height*0.73,
                            child: ListView(
                    shrinkWrap: true,
                    children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 200.h,
                                    width: 200.w,
                                    child: PageView.builder(
                                      controller: _controller,
                                      itemCount: pages.length,
                                      itemBuilder: (_, index) {
                                        return pages[index % pages.length];
                                      },
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Center(
                              child: SmoothPageIndicator(
                                controller: _controller,
                                count: 2,
                                effect: ScrollingDotsEffect(
                                  activeDotColor: darkGreenColor,
                                  dotHeight: 7,
                                  dotWidth: 7,
                                ),
                                onDotClicked: ((index) {}),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15, right: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                       // getProfileuser.profileDetails.role == "Retail" ? widget.productData.price : "20" ,
                                        widget.productData.name,
                                        style: GoogleFonts.montserrat(
                                          fontSize: 17.sp,
                                          color: Color(0xff000000),
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                     
                                      RatingBar.builder(
                                       initialRating: 0,
                                       minRating: 0,
                                       itemSize: 20,
                                       glow: false,
                                       direction: Axis.horizontal,
                                       allowHalfRating: false,
                                       itemCount: 5,
                                       itemPadding: EdgeInsets.symmetric(horizontal: 2.0),
                                       itemBuilder: (context, _) => Icon(
                                       Icons.star,
                                       color: Colors.amber,
                                          ),
                                          
                                       onRatingUpdate: (rating) {
                                        ratingController.productRating(product_id:widget.productData.id.toString(),rating:rating.toString());
                                       print(rating);
                                            },
                                         ),
                                    ],
                                  ),
                                  Text(
                                    widget.productData.quantity,
                                    style: GoogleFonts.roboto(
                                      textStyle: TextStyle(
                                          color: Color(0xff289445),
                                          fontSize: 17.sp,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                  Text(
                                    "₹569.00",
                                    style: GoogleFonts.roboto(
                                      textStyle: TextStyle(
                                          color: Color(0xff000000),
                                          fontSize: 17.sp,
                                          fontWeight: FontWeight.w400,
                                          decoration: TextDecoration.lineThrough),
                                    ),
                                  ),
                                  Row(
                                  //  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                                    Text(
                                                      "₹ ${getProfileuser.profileDetails.role == "Retail" ? widget.productData.priceRetailer : widget.productData.priceCustomer }",
                                                      textAlign: TextAlign.start,
                                                      style: GoogleFonts.roboto(
                                                        fontSize: 18.sp,
                                                        color: Color(0xff016942),
                                                        fontWeight: FontWeight.bold,
                                                      ),
                                                    ),
                                                InkWell(
                                                  onTap: (){
                                                      addToCartController.addtocart(
                                                      productId: "${widget.productData.id}",
                                                      quantity: "1");
                                                  },
                                                  child: Container(
                                                    height: 30,
                                                    width: 110,
                                                  child: Center(
                                                  child: Text("ADD TO CART",
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold
                                                    ),
                                                  ),
                                                                                              ),
                                                                                              decoration: BoxDecoration(
                                                  
                                                    border: Border.all(
                                                        color: Color(0xff016942)),
                                                    borderRadius: BorderRadius.circular(10),
                                                    color:darkGreenColor),
                                                                                            ),
                                                ),
                                     
                                     
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "Description",
                                    style: GoogleFonts.montserrat(
                                      textStyle: TextStyle(
                                        color: Color(0xff000000),
                                        fontSize: 20.sp,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "Lorem Ipsum is simply dummy text of the printing and\n"
                                    "typesetting industry. Lorem Ipsum has been the industry's\n"
                                    "standard dummy text ever since the 1500s, when an\n"
                                    "unknown printer took a galley of type and scrambled it to\n"
                                    "make a type specimen book.",
                                    style: GoogleFonts.montserrat(
                                      textStyle: TextStyle(
                                        color: Color(0xff000000),
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "Disclaimer",
                                    style: GoogleFonts.montserrat(
                                      textStyle: TextStyle(
                                        color: Color(0xff000000),
                                        fontSize: 20.sp,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "Lorem Ipsum is simply dummy text of the printing and\n"
                                    "typesetting industry. Lorem Ipsum has been the industry's\n"
                                    "standard dummy text ever since the 1500s, when an\n"
                                    "unknown printer took a galley of type and scrambled it to\n"
                                    "make a type specimen book.",
                                    style: GoogleFonts.montserrat(
                                      textStyle: TextStyle(
                                        color: Color(0xff000000),
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                    ],
                  ),
                          ),
                        ],
                      ),
                ),
                );
            }
          ),
            bottomNavigationBar: Container(
            color: Colors.white,
            child: Container(
              height: 60,
              decoration: BoxDecoration(
                color: Color(0xff289445),
                  borderRadius:
                      BorderRadius.only(topLeft: Radius.circular(35))),
                      child:Center(
                child: Padding(
                  padding: const EdgeInsets.only( left: 10, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image(
                        image: AssetImage("assets/images/shop.png"),
                        color: Color(0xffFFFFFF),
                      ),
                      Obx(
                        () => Container(
                          width: 55,
                          child: FittedBox(
                            fit: BoxFit.scaleDown,
                            child: Text(
                              "${getCartController.totalitem.value} Iterms",
                              style: GoogleFonts.roboto(
                                textStyle: TextStyle(
                                  color: Color(0xffFFFFFF),
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Obx(() =>  Container(
                                        width: 70,
                                        child: FittedBox(
                                          fit: BoxFit.scaleDown,
                                          child: Text(
                                            "${getCartController.totalPrice.value}",
                                            style: GoogleFonts.roboto(
                                              fontSize: 18.sp,
                                              color: Color(0xffFFFFFF),
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),),
                      // Container(
                      //   height: 25,
                      //   width: 110,
                      //   child: Center(
                      //     child: Text(
                      //       "25 Points Saved",
                      //       textAlign: TextAlign.center,
                      //       style: GoogleFonts.roboto(
                      //         textStyle: TextStyle(
                      //           color: Color(0xff289445),
                      //           fontSize: 13,
                      //           fontWeight: FontWeight.bold,
                      //         ),
                      //       ),
                      //     ),
                      //   ),
                      //   decoration: BoxDecoration(
                      //       color: Colors.white,
                      //       borderRadius: BorderRadius.circular(5)),
                      // ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomeNavigationBar(
                                  index: 1,
                                )),
                          );
                        },
                        child: Container(
                          height: 25,
                          width: 100,
                          child: Center(
                            child: Text(
                              "View Cart",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.roboto(
                                textStyle: GoogleFonts.roboto(
                                  color: Color(0xffFFFFFF),
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          decoration: BoxDecoration(
                              color: Color(0xffF3A623),
                              borderRadius: BorderRadius.circular(5)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
    );
  }
}