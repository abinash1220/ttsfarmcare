import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ttsfarmcare/controllers/profile_user_details_api_controllers/profile_user_controller.dart';
import 'package:ttsfarmcare/view/landing_page/landing_screen.dart';
import 'package:ttsfarmcare/view/profile_screen/password_change_screen.dart';
import 'package:ttsfarmcare/view/profile_screen/total_points_screen.dart';
import 'dart:io' as fl;
import '../../constants/app_colors.dart';
import '../../controllers/home_Controllers.dart';
import '../../controllers/profile_controller.dart';
import '../home_Screen/home_navigationbar.dart';
import '../home_Screen/home_page.dart';
import '../login_in_page/login_screen.dart';
import '../order_history_page/order_history.dart';
import '../view_cart_pages/view_cart_screen.dart';
import 'all_my_orders_screen.dart';
import 'customer_support_screen.dart';
import 'edit_profile_screen.dart';
import 'finished_orders.dart';
import 'invite_friends_screen.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final homeController = Get.find<HomeControllers>();

  final ProfileController profile = Get.put(ProfileController());

  final  getProfileuser = Get.find<GetProfileControllers>();

  logOutUser() async {
    final prefs = await SharedPreferences.getInstance();

    await prefs.setString("auth_token", "null");

    Get.offAll(() => LandingScreen());
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getProfileuser.getProfiledetails();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
          leading: InkWell(
              onTap: () {
                homeController.bottomIcon(1);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>  HomeNavigationBar()),
                );
              },
              child: Icon(
                Icons.arrow_back,
              )),
          title: Text(
            "Profile",
            style: GoogleFonts.montserrat(
              fontWeight: FontWeight.bold,
            ),
          ),
          titleSpacing: -10,
          actions: [
            // Padding(
            //   padding: const EdgeInsets.only(right: 20),
            //   child: Image(
            //       height: 45,
            //       width: 45,
            //       image: AssetImage("assets/images/Group 3470.png")),
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
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(25),
                  bottomRight: Radius.circular(25))),
          child: GetBuilder<GetProfileControllers>(
                builder: (_) => Column(children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 20),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Obx(
                        () => profile.profileImage == ""
                            ? Container(
                                height: 110.h,
                                width: 110.w,
                                child: Image(
                                  image: AssetImage("assets/image/NoPath.png"),
                                  //fit: BoxFit.contain,
                                ))
                            : Container(
                                height: 110.h,
                                width: 110.w,
                                child: Image(
                                  image: FileImage(
                                      fl.File(profile.profileImage.value)),
                                  fit: BoxFit.cover,
                                )),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        //  mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            getProfileuser.profileDetails.name,
                            style: GoogleFonts.montserrat(
                              fontSize: 30.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 3.h,
                          ),
                          Text(
                            getProfileuser.profileDetails.email,
                            style: GoogleFonts.montserrat(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const EditProfileScreen()),
                              );
                            },
                            child: Text(
                              "EDIT PROFILE",
                              style: GoogleFonts.poppins(
                                fontSize: 12.sp,
                                color: darkGreenColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AllMyOrdersScreen()),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20, right: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image(
                                height: 18,
                                width: 20,
                                  image: AssetImage(
                                "assets/icons/all order.png",
                              )),
                              SizedBox(
                                width: 13.w,
                              ),
                              Text(
                                "All My Orders",
                                style: GoogleFonts.montserrat(
                                  fontSize: 14.sp,
                                  color: Color(0xff515C6F),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const AllMyOrdersScreen()),
                                  );
                                },
                                child: Icon(
                                  Icons.navigate_next,
                                  color: Color(0xff515C6F),
                                )),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: Divider(
                      //color: Color(0xff515C6F),
                      ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const FinishedOrders()),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 5, right: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image(height: 25,
                              width: 20,
                                image: AssetImage("assets/icons/finished.png")),
                              SizedBox(
                                width: 13.w,
                              ),
                              Text(
                                "Finished Orders",
                                style: GoogleFonts.montserrat(
                                  fontSize: 14.sp,
                                  color: Color(0xff515C6F),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const FinishedOrders()),
                                  );
                                },
                                child: Icon(
                                  Icons.navigate_next,
                                  color: Color(0xff515C6F),
                                )),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: Divider(
                      //color: Color(0xff515C6F),
                      ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const InviteFriendsScreen()),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 5, right: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image(height: 25,width: 20,
                                image: AssetImage("assets/icons/invite.png")),
                              SizedBox(
                                width: 13.w,
                              ),
                              Text(
                                "Invite Friends",
                                style: GoogleFonts.montserrat(
                                  fontSize: 14.sp,
                                  color: Color(0xff515C6F),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const InviteFriendsScreen()),
                                  );
                                },
                                child: Icon(
                                  Icons.navigate_next,
                                  color: Color(0xff515C6F),
                                )),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: Divider(
                      //color: Color(0xff515C6F),
                      ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const CustomerSupportScreen()),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 5, right: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image(height: 20,width: 20,
                                image: AssetImage("assets/icons/support.png")),
                              SizedBox(
                                width: 13.w,
                              ),
                              Text(
                                "Customer Support",
                                style: GoogleFonts.montserrat(
                                  fontSize: 14.sp,
                                  color: Color(0xff515C6F),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const CustomerSupportScreen()),
                                  );
                                },
                                child: Icon(
                                  Icons.navigate_next,
                                  color: Color(0xff515C6F),
                                )),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: Divider(
                      //color: Color(0xff515C6F),
                      ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const PasswordChangeScreen()),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 5, right: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image(height: 20,width: 20,
                                image: AssetImage("assets/icons/misella.png")),
                              SizedBox(
                                width: 13.w,
                              ),
                              Text(
                                "Password Change",
                                style: GoogleFonts.montserrat(
                                  fontSize: 14.sp,
                                  color: Color(0xff515C6F),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const PasswordChangeScreen()),
                                  );
                                },
                                child: Icon(
                                  Icons.navigate_next,
                                  color: Color(0xff515C6F),
                                )),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: Divider(
                      //color: Color(0xff515C6F),
                      ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                // Padding(
                //   padding: const EdgeInsets.only(left: 10),
                //   child: InkWell(
                //     onTap: () {
                //       Navigator.push(
                //         context,
                //         MaterialPageRoute(
                //             builder: (context) => const TotalPointsScreen()),
                //       );
                //     },
                //     child: Padding(
                //       padding: const EdgeInsets.only(left: 5, right: 5),
                //       child: Row(
                //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //         children: [
                //           Row(
                //             children: [
                //               Image(image: AssetImage("assets/icons/coin.png")),
                //               SizedBox(
                //                 width: 15.w,
                //               ),
                //               Text(
                //                 "Total Points",
                //                 style: GoogleFonts.montserrat(
                //                   fontSize: 14.sp,
                //                   color: Color(0xff515C6F),
                //                   fontWeight: FontWeight.bold,
                //                 ),
                //               ),
                //             ],
                //           ),
                //           Padding(
                //             padding: const EdgeInsets.only(right: 10),
                //             child: InkWell(
                //                 onTap: () {
                //                   Navigator.push(
                //                     context,
                //                     MaterialPageRoute(
                //                         builder: (context) =>
                //                             const TotalPointsScreen()),
                //                   );
                //                 },
                //                 child: Icon(
                //                   Icons.navigate_next,
                //                   color: Color(0xff515C6F),
                //                 )),
                //           ),
                //         ],
                //       ),
                //     ),
                //   ),
                // ),
                // Padding(
                //   padding: const EdgeInsets.only(left: 15, right: 15),
                //   child: Divider(
                //       //color: Color(0xff515C6F),
                //       ),
                // ),
                // SizedBox(
                //   height: 10.h,
                // ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: InkWell(
                    onTap: () {
                      logOutUser();
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            InkWell(
                                onTap: () {
                                  logOutUser();
                                  // Navigator.push(
                                  //   context,
                                  //   MaterialPageRoute(
                                  //       builder: (context) => const LoginScreen()),
                                  // );
                                },
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: Image(
                                    height: 20,width: 20,
                                      image: AssetImage(
                                          "assets/icons/logout_black_24dp.png")),
                                )),
                            SizedBox(
                              width: 13.w,
                            ),
                            Text(
                              "Log Out",
                              style: GoogleFonts.montserrat(
                                fontSize: 14.sp,
                                color: Color(0xff515C6F),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ])))));
            }
         
  }

