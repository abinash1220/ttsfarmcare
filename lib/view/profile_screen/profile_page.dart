import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:ttsfarmcare/constants/app_colors.dart';
import 'package:ttsfarmcare/view/landing_page/landing_screen.dart';
import 'package:ttsfarmcare/view/profile_screen/all_my_orders.dart';
import 'package:ttsfarmcare/view/profile_screen/customer_support.dart';
import 'package:ttsfarmcare/view/profile_screen/edit_profile.dart';
import 'package:ttsfarmcare/view/profile_screen/finished_my_orders.dart';
import 'package:ttsfarmcare/view/profile_screen/invite_friends.dart';
import 'package:ttsfarmcare/view/profile_screen/password_change.dart';
import 'package:ttsfarmcare/view/profile_screen/test_edit_profile.dart';
import 'package:ttsfarmcare/view/profile_screen/total_points.dart';

import '../../controllers/home_Controllers.dart';
import '../home_Screen/home_Screen.dart';
import '../home_Screen/view_cart.screen.dart';
import '../order_history_page/order_history_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {

final homeController = Get.find<HomeControllers>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Image(image: AssetImage("assets/images/Group 3361.png")),
              Padding(
                padding: const EdgeInsets.only(top: 50, left: 10,right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        // InkWell(
                        //   onTap: () {
                        //     Get.back();
                        //   },
                        //   child: Icon(
                        //     Icons.arrow_back,
                        //     color: Colors.white,
                        //   ),
                        // ),
                        Text(
                          "Profile",
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        
                      ],
                    ),
                    Image(image: AssetImage("assets/images/Group 3466.png")),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 110.h,
                  width: 110.w,
                  
                  child: Image(image: AssetImage("assets/image/NoPath.png"),
                  fit: BoxFit.fill,
                  )),
                SizedBox(
                  width: 10.w,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "TTS Farm Care",
                      style: TextStyle(
                        fontSize: 30.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    //SizedBox(height: 5.h,),
                    Text(
                      "ttsfarmcare@email.com",
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.push(
                                         context,
                                         MaterialPageRoute(builder: (context) => const EditProfilePage()),
                                       );
                      },
                      child: Text(
                        "EDIT PROFILE",
                        style: TextStyle(
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
          SizedBox(height: 10.h,),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: InkWell(
              onTap: (){
                          Navigator.push(
                           context,
                           MaterialPageRoute(builder: (context) => const AllMyOrders()),
                          );
                        },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
            
                children: [
                  Row(
                    children: [
                      Image(image: AssetImage("assets/icons/all order.png")),
                      SizedBox(width: 10.w,),
                      Text(
                        "All My Orders",
                        style: TextStyle(
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
                      onTap: (){
                        Navigator.push(
                           context,
                           MaterialPageRoute(builder: (context) => const AllMyOrders()),
                          );
                      },
                      child: Icon(Icons.navigate_next,
                      color: Color(0xff515C6F),
                      )
                      ),
                  ),
                ],
              ),
            ),
          
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10,right: 10),
            child: Divider(
              //color: Color(0xff515C6F),
            ),
          ),
          SizedBox(height: 10.h,),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: InkWell(
              onTap: (){
                          Navigator.push(
                           context,
                           MaterialPageRoute(builder: (context) => const FinishedMyOrders()),
                          );
                        },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
            
                children: [
                  Row(
                    children: [
                      Image(image: AssetImage("assets/icons/finished.png")),
                      SizedBox(width: 10.w,),
                      Text(
                        "Finished Orders",
                        style: TextStyle(
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
                      onTap: (){
                        Navigator.push(
                           context,
                           MaterialPageRoute(builder: (context) => const FinishedMyOrders()),
                          );
                      },
                      child: Icon(Icons.navigate_next,
                      color: Color(0xff515C6F),
                      )
                      ),
                  ),
                ],
              ),
            ),
          
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10,right: 10),
            child: Divider(
              //color: Color(0xff515C6F),
            ),
          ),
          SizedBox(height: 10.h,),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: InkWell(
              onTap: (){
                          Navigator.push(
                           context,
                           MaterialPageRoute(builder: (context) => const InviteFriend()),
                          );
                        },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
            
                children: [
                  Row(
                    children: [
                      Image(image: AssetImage("assets/icons/invite.png")),
                      SizedBox(width: 10.w,),
                      Text(
                        "Invite Friends",
                        style: TextStyle(
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
                      onTap: (){
                        Navigator.push(
                           context,
                           MaterialPageRoute(builder: (context) => const InviteFriend()),
                          );
                      },
                      child: Icon(Icons.navigate_next,
                      color: Color(0xff515C6F),
                      )
                      ),
                  ),
                ],
              ),
            ),
          
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10,right: 10),
            child: Divider(
              //color: Color(0xff515C6F),
            ),
          ),
          SizedBox(height: 10.h,),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: InkWell(
              onTap: (){
                          Navigator.push(
                           context,
                           MaterialPageRoute(builder: (context) => const CustomerSupport()),
                          );
                        },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
            
                children: [
                  Row(
                    children: [
                      Image(image: AssetImage("assets/icons/support.png")),
                      SizedBox(width: 10.w,),
                      Text(
                        "Customer Support",
                        style: TextStyle(
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
                      onTap: (){
                        Navigator.push(
                           context,
                           MaterialPageRoute(builder: (context) => const CustomerSupport()),
                          );
                      },
                      child: Icon(Icons.navigate_next,
                      color: Color(0xff515C6F),
                      )
                      ),
                  ),
                ],
              ),
            ),
          
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10,right: 10),
            child: Divider(
              //color: Color(0xff515C6F),
            ),
          ),
          SizedBox(height: 10.h,),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: InkWell(
              onTap: (){
                          Navigator.push(
                           context,
                           MaterialPageRoute(builder: (context) => const PasswordChange()),
                          );
                        },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
            
                children: [
                  Row(
                    children: [
                      Image(image: AssetImage("assets/icons/support.png")),
                      SizedBox(width: 10.w,),
                      Text(
                        "Password Change",
                        style: TextStyle(
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
                      onTap: (){
                        Navigator.push(
                           context,
                           MaterialPageRoute(builder: (context) => const PasswordChange()),
                          );
                      },
                      child: Icon(Icons.navigate_next,
                      color: Color(0xff515C6F),
                      )
                      ),
                  ),
                ],
              ),
            ),
          
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10,right: 10),
            child: Divider(
              //color: Color(0xff515C6F),
            ),
          ),
          SizedBox(height: 10.h,),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: InkWell(
              onTap: (){
                          Navigator.push(
                           context,
                           MaterialPageRoute(builder: (context) => const TotalPoint()),
                          );
                        },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
            
                children: [
                  Row(
                    children: [
                      Image(image: AssetImage("assets/icons/coin.png")),
                      SizedBox(width: 10.w,),
                      Text(
                        "Total Points",
                        style: TextStyle(
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
                      onTap: (){
                        Navigator.push(
                           context,
                           MaterialPageRoute(builder: (context) => const TotalPoint()),
                          );
                      },
                      child: Icon(Icons.navigate_next,
                      color: Color(0xff515C6F),
                      )
                      ),
                  ),
                ],
              ),
            ),
          
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10,right: 10),
            child: Divider(
              //color: Color(0xff515C6F),
            ),
          ),
          SizedBox(height: 10.h,),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: InkWell(
              onTap: (){
                          Navigator.push(
                           context,
                           MaterialPageRoute(builder: (context) => const LandingScreen()),
                          );
                        },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
            
                children: [
                  Row(
                    children: [
                      InkWell(
                        onTap: (){
                          Navigator.push(
                           context,
                           MaterialPageRoute(builder: (context) => const LandingScreen()),
                          );
                        },
                        child: Image(image: AssetImage("assets/icons/logout_black_24dp.png"))),
                      SizedBox(width: 10.w,),
                      Text(
                        "Log Out",
                        style: TextStyle(
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
          
          
        ],
      ),
      bottomNavigationBar: Obx(
        () => 
          Container(
            height: 90.h,
            child: Column(
             
              children: [
                 

                        Container(
                          height: 100.h,
                           decoration: BoxDecoration(
                             
                            image: DecorationImage(image: AssetImage("assets/images/Group 3362.png"))
                           ),
                           child:Center(
                             child: Padding(
                               padding: const EdgeInsets.only(top: 15),
                               child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 40,
                        child: InkWell(
                          onTap: () {
                                homeController.bottomIcon(1);
                                Navigator.push(
                                               context,
                                               MaterialPageRoute(builder: (context) => const HomeScreen()),
                                             );
                          },
                          child: Column(
                                children: [
                                  Image(
                                     height: 20,
                                fit: BoxFit.fitHeight,
                                    image: AssetImage("assets/images/home.png"),
                                    color: homeController.bottomIcon == 1
                                        ? Colors.white
                                        : Colors.black,
                                  ),

                                  Text("Home",style: TextStyle(
                                     color: homeController.bottomIcon == 1
                                        ? Colors.white
                                        : Colors.black,
                                    ),)
                                ],
                          ),
                        ),
                      ),
                      
                      Container(
                        height: 42,
                        child: InkWell(
                          onTap: () {
                            homeController.bottomIcon(2);
                            Navigator.push(
                                         context,
                                         MaterialPageRoute(builder: (context) => const ViewCartScreen()),
                                       );
                          },
                          child: Column(
                            children: [
                              Image(
                                 height: 20,
                                fit: BoxFit.fitHeight,
                                image: AssetImage("assets/images/shop.png"),
                                color: homeController.bottomIcon == 2
                                        ? Colors.white
                                        : Colors.black,
                              ),

                              Text("Cart",style: TextStyle(
                                       color: homeController.bottomIcon == 2
                                          ? Colors.white
                                          : Colors.black,
                                      ),)
                            ],
                          ),
                        ),
                      ),
                      
                      Container(
                        height: 40,
                        child: InkWell(
                          onTap: () {
                            homeController.bottomIcon(3);
                            Navigator.push(
                                         context,
                                         MaterialPageRoute(builder: (context) => const OrderHistory()),
                                       );
                          },
                          child: Column(
                            children: [
                              Image(
                                height: 20,
                                fit: BoxFit.fitHeight,
                                image: AssetImage("assets/images/Path 38.png"),

                                color: homeController.bottomIcon == 3
                                        ? Colors.white
                                        : Colors.black,
                              ),

                              Text("History",style: TextStyle(
                                     color: homeController.bottomIcon == 3
                                        ? Colors.white
                                        : Colors.black,
                                    ),)
                            ],
                          ),
                        ),
                      ),
                     
                      Container(
                        height: 50,
                        child: InkWell(
                          onTap: () {
                            homeController.bottomIcon(4);
                            Navigator.push(
                                         context,
                                         MaterialPageRoute(builder: (context) => const ProfileScreen()),
                                       );
                          },
                          child: Column(
                            children: [
                              Image(
                                 height: 25,
                                fit: BoxFit.fitHeight,
                                image: AssetImage("assets/images/profile.png"),
                                color: homeController.bottomIcon == 4
                                        ? Colors.white
                                        : Colors.black,
                              ),

                              Text("Profile",style: TextStyle(
                                     color: homeController.bottomIcon == 4
                                        ? Colors.white
                                        : Colors.black,
                                    ),)
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                             ),
                           ) ,

                        ),
             
              ],
            ),
          ),
      ),
    );
  }
}
