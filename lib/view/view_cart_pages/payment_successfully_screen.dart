import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ttsfarmcare/view/home_Screen/home_navigationbar.dart';

import '../../constants/app_colors.dart';
import '../../controllers/home_Controllers.dart';
import '../home_Screen/home_page.dart';

class PaymentSuccessfullScreen extends StatefulWidget {
  const PaymentSuccessfullScreen({super.key});

  @override
  State<PaymentSuccessfullScreen> createState() =>
      _PaymentSuccessfullScreenState();
}

class _PaymentSuccessfullScreenState extends State<PaymentSuccessfullScreen> {
  final homeController = Get.find<HomeControllers>();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    redirectToNext();
  }

  redirectToNext() async {
    await Future.delayed(Duration(seconds: 3));
    Get.offAll(HomeNavigationBar());
  }


  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
          title: Text(
            "Succesfully",
            style: GoogleFonts.montserrat(
              fontWeight: FontWeight.bold,
            ),
          ),
          automaticallyImplyLeading: false,
          centerTitle: false,
          actions: [
            // Padding(
            //   padding: const EdgeInsets.only(right: 20),
            //   child: Image(
            //     height: 45,width: 45,
            //     image: AssetImage("assets/images/Group 3470.png")),
            // ),
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
              borderRadius: BorderRadius.only(topRight: Radius.circular(40))),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 0, left: 0),
                  child: Center(
                    child: Column(
                      children: [
                        Image(
                          height: 120,
                            image: AssetImage("assets/images/sucessfully.png")),
                        SizedBox(
                          height: 40,
                        ),
                        Text(
                          "Your Order Succesfully Register!",
                          style: GoogleFonts.montserrat(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff727C8E)),
                        ),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    homeController.bottomIcon(1);
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  HomeNavigationBar()),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 30, right: 30),
                    child: Container(
                      height: 50,
                      width:size.width,
                      child: Center(
                        child: Text(
                          "Done",
                          style: GoogleFonts.montserrat(
                              color: Colors.white,
                              fontSize: 21,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: darkGreenColor,
                      ),
                    ),
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
