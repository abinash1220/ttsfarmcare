import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../constants/app_colors.dart';
import '../../controllers/about_product_controller.dart';
import '../../controllers/home_Controllers.dart';
import '../home_Screen/home_navigationbar.dart';
import '../view_cart_pages/view_cart_screen.dart';

class AboutProduct extends StatefulWidget {
  String image;
  String name;
  AboutProduct({required this.image, required this.name});

  @override
  State<AboutProduct> createState() => _AboutProductState();
}

class _AboutProductState extends State<AboutProduct> {
  PageController _controller =
      PageController(viewportFraction: 0.8, keepPage: true);

      final homeController = Get.find<HomeControllers>();

  final AboutProductController c = Get.put(AboutProductController());

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setDefault();
    //homeController.bottomIcon(2);
  }

  setDefault() {
    c.productcount(1);
    c.prices(450.00);
    
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
                                    height: 200,
                                    width: 200,
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
                                children: [
                                  Row(
                                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        widget.name,
                                        style: GoogleFonts.montserrat(
                                          fontSize: 17,
                                          color: Color(0xff000000),
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      Container(
                                        width: size.width * 0.40,
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.end,
                                          children: [
                                            Icon(
                                              Icons.star,
                                              color: Color(0xffE4A819),
                                              size: 15,
                                            ),
                                            Icon(
                                              Icons.star,
                                              color: Color(0xffE4A819),
                                              size: 15,
                                            ),
                                            Icon(
                                              Icons.star,
                                              color: Color(0xffE4A819),
                                              size: 15,
                                            ),
                                            Icon(
                                              Icons.star_border,
                                              color: Color(0xffE4A819),
                                              size: 15,
                                            ),
                                            Icon(
                                              Icons.star_border,
                                              color: Color(0xffE4A819),
                                              size: 15,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    "120 gms",
                                    style: GoogleFonts.roboto(
                                      textStyle: TextStyle(
                                          color: Color(0xff289445),
                                          fontSize: 17,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                  Text(
                                    "₹569.00",
                                    style: GoogleFonts.roboto(
                                      textStyle: TextStyle(
                                          color: Color(0xff000000),
                                          fontSize: 17,
                                          fontWeight: FontWeight.w400,
                                          decoration: TextDecoration.lineThrough),
                                    ),
                                  ),
                                  Row(
                                   // crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Obx(() =>  Container(
                                                  width: 70,
                                                  child: FittedBox(
                                                    fit: BoxFit.scaleDown,
                                                    child: Text(
                                                      "₹ ${c.prices.toStringAsFixed(2)}",
                                                      style: GoogleFonts.roboto(
                                                        fontSize: 18.sp,
                                                        color: Color(0xff016942),
                                                        fontWeight: FontWeight.bold,
                                                      ),
                                                    ),
                                                  ),
                                                ),),
                                      SizedBox(
                                        width: 3,
                                      ),
                                      Container(
                                        width: size.width * 0.7,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              "25 Points",
                                              style: GoogleFonts.roboto(
                                                textStyle: TextStyle(
                                                  color: Color(0xffF9A20D),
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              height: 30,
                                              width: 100,
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  InkWell(
                                                      onTap: () {
                                                        c.decrement();
                                                      },
                                                      child: Padding(
                                                        padding: const EdgeInsets.all(5.0),
                                                        child: Icon(
                                                          Icons.remove,
                                                          size: 17,
                                                          color: Color(0xff016942),
                                                        ),
                                                      )),
                                                  Container(
                                                    height: 30,
                                                    width: 35,
                                                    child: Center(
                                                      child: Obx(() => Text(
                                                            "0${c.productcount.toString()}",
                                                            style: GoogleFonts.roboto(
                                                              color: darkGreenColor,
                                                              fontWeight: FontWeight.bold,
                                                              fontSize: 15,
                                                            ),
                                                          )),
                                                    ),
                                                    decoration: BoxDecoration(
                                                      border: Border.symmetric(
                                                          vertical: BorderSide(
                                                              color: Color(0xff016942))),
                                                    ),
                                                  ),
                                                  InkWell(
                                                      onTap: () {
                                                        c.increment();
                                                      },
                                                      child: Padding(
                                                        padding: const EdgeInsets.all(5.0),
                                                        child: Icon(
                                                          Icons.add,
                                                          size: 17,
                                                          color: Color(0xff016942),
                                                        ),
                                                      )),
                                                ],
                                              ),
                                              decoration: BoxDecoration(
                                                  border: Border.all(
                                                      color: Color(0xff016942)),
                                                  borderRadius: BorderRadius.circular(10),
                                                  color: Colors.white),
                                            ),
                                          ],
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
                                        fontSize: 20,
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
                                        fontSize: 12,
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
                                        fontSize: 20,
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
                                        fontSize: 12,
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
                              "${c.productcount.toString()} Iterms",
                              style: GoogleFonts.roboto(
                                textStyle: TextStyle(
                                  color: Color(0xffFFFFFF),
                                  fontSize: 15,
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
                                            "${c.prices.toStringAsFixed(2)}",
                                            style: GoogleFonts.roboto(
                                              fontSize: 18.sp,
                                              color: Color(0xffFFFFFF),
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),),
                      Container(
                        height: 25,
                        width: 110,
                        child: Center(
                          child: Text(
                            "25 Points Saved",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.roboto(
                              textStyle: TextStyle(
                                color: Color(0xff289445),
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5)),
                      ),
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