import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:ttsfarmcare/constants/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ttsfarmcare/view/home_Screen/view_cart.screen.dart';

class AboutProductScreen extends StatefulWidget {
  String image;
  String name;
   AboutProductScreen({
    required this.image,
   required this.name
   });

  @override
  State<AboutProductScreen> createState() => _AboutProductScreenState();
}

class _AboutProductScreenState extends State<AboutProductScreen> {
  final controller = PageController(viewportFraction: 0.8, keepPage: true);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
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
                      image: AssetImage("assets/images/Group 3361.png",),
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
                              style: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
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
                  ? size.height * 0.67
                  : size.height * 0.7,
              child: ListView(
                shrinkWrap: true,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 200,
                        width: 100,
                        child: Image(
                          image: AssetImage(widget.image),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ],
                  ),
                  Center(
                    child: SmoothPageIndicator(
                      controller: controller,
                      count: 2,
                      effect: ScrollingDotsEffect(
                        activeDotColor: darkGreenColor,
                        dotHeight: 9,
                        dotWidth: 9,
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
                              style: TextStyle(
                                fontSize: 17,
                                color: Color(0xff000000),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Container(
                              width: size.width * 0.45,
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
                          "₹ 569.00",
                          style: GoogleFonts.roboto(
                            textStyle: TextStyle(
                              color: Color(0xff000000),
                              fontSize: 17,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              "₹ 450.00",
                              style: GoogleFonts.roboto(
                                textStyle: TextStyle(
                                  color: Color(0xff000000),
                                  fontSize: 21,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
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
                                            onTap: () {},
                                            child: Icon(
                                              Icons.remove,
                                              size: 17,
                                              color: Color(0xff016942),
                                            )),
                                        Container(
                                          height: 30,
                                          width: 35,
                                          child: Center(child: Text("01")),
                                          decoration: BoxDecoration(
                                            border: Border.symmetric(
                                                vertical: BorderSide(
                                                    color: Color(0xff016942))),
                                          ),
                                        ),
                                        InkWell(
                                            onTap: () {},
                                            child: Icon(
                                              Icons.add,
                                              size: 17,
                                              color: Color(0xff016942),
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
            Stack(children: [
              Image(image: AssetImage("assets/images/Group 3362.png")),
              Padding(
                padding: const EdgeInsets.only(top: 50, left: 10, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(
                      Icons.shopping_cart,
                      color: Colors.white,
                    ),
                    Text(
                      "1 Iterms",
                      style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                          color: Color(0xffFFFFFF),
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Text(
                      "450.00",
                      style: GoogleFonts.montserrat(
                        textStyle: TextStyle(
                          color: Color(0xffFFFFFF),
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      height: 25,
                      width: 110,
                      child: Center(
                        child: Text(
                          "25 Points Saved",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.montserrat(
                            textStyle: TextStyle(
                              color: Color(0xff289445),
                              fontSize: 11,
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
                      onTap: (){
                        Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const ViewCartScreen()),
                            );
                      },
                      child: Container(
                        height: 25,
                        width: 100,
                        child: Center(
                          child: Text(
                            "View Cart",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.montserrat(
                              textStyle: TextStyle(
                                color: Color(0xffFFFFFF),
                                fontSize: 11,
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
              )
            ])
          ]),
        );
      }),
    );
  }
}
