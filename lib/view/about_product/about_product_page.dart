import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:ttsfarmcare/constants/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ttsfarmcare/controllers/about_product_controller.dart';
import 'package:ttsfarmcare/view/home_Screen/view_cart.screen.dart';

import '../../controllers/view_cart_controller.dart';

class AboutProductScreen extends StatefulWidget {
  String image;
  String name;
  AboutProductScreen({required this.image, required this.name});

  @override
  State<AboutProductScreen> createState() => _AboutProductScreenState();
}

class _AboutProductScreenState extends State<AboutProductScreen> {
  PageController _controller =
      PageController(viewportFraction: 0.8, keepPage: true);

  final AboutProductController c = Get.put(AboutProductController());

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setDefault();
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
      body: LayoutBuilder(
          builder: (BuildContext ctx, BoxConstraints constraints) {
        return Container(
          height: size.height,
          child: Column(children: [
            Container(
              height: constraints.maxHeight > 600
                  ? size.height * 0.2
                  : size.height * 0.3,
              child: Stack(
                children: [
                  Container(
                    width: double.infinity,
                    child: Image(
                      image: AssetImage(
                        "assets/images/Group 3361.png",
                      ),
                      fit: BoxFit.fill,
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 50, left: 10, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            InkWell(
                              onTap: () {
                                Get.back();
                              },
                              child: Icon(
                                Icons.arrow_back,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "About Product",
                              style: GoogleFonts.montserrat(
                                fontSize: 25,
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                        Image(
                            image: AssetImage("assets/images/Group 3466.png")),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: constraints.maxHeight > 600
                  ? size.height * 0.68
                  : size.height * 0.7,
              child: ListView(
                shrinkWrap: true,
                children: [
                  Row(
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
                    padding: const EdgeInsets.only(left: 10, right: 10),
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
          ]),
        );
      }),
      bottomNavigationBar: Container(
        height: 90,
        child: Column(
          children: [
            Container(
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/Group 3362.png"),
                      fit: BoxFit.fill)),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 15, left: 10, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image(
                        image: AssetImage("assets/images/shop.png"),
                        color: Colors.white,
                      ),
                      Obx(
                        () => Text(
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
                                builder: (context) => const ViewCartScreen()),
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
          ],
        ),
      ),
    );
  }
}
