import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:ttsfarmcare/constants/app_colors.dart';
import 'package:ttsfarmcare/view/order_history_page/order_history_screen.dart';
import 'package:ttsfarmcare/view/profile_screen/profile_page.dart';

import '../../controllers/home_Controllers.dart';
import 'address_screen.dart';
import 'home_Screen.dart';

class ViewCartScreen extends StatefulWidget {
  const ViewCartScreen({super.key});

  @override
  State<ViewCartScreen> createState() => _ViewCartScreenState();
}

class _ViewCartScreenState extends State<ViewCartScreen> {

int _counter = 0;

 final homeController = Get.find<HomeControllers>();


  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
              width: size.width,
              // height: size.height * 0.35,
              child: Image(
                image: AssetImage("assets/images/Group 3361.png"),
                fit: BoxFit.fill,
              )),
          Padding(
            padding: const EdgeInsets.only(top: 50, left: 10,right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                  "View Cart",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                
                Image(
                    image: AssetImage("assets/images/Group 3466.png")),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 140,left: 10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 23,
                      width: 23,
                      child: Image(image: AssetImage("assets/images/sucessfully.png")),
                      decoration: BoxDecoration(
                       // color: darkGreenColor,
                        border: Border.all(color: Color(0xff707070)),
                        borderRadius: BorderRadius.circular(15)
                      ),
                    ),
                    
                    Text("Cart",
                    style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                    ),
                   
                    Container(
                      height: 23,
                      width: 23,
                      decoration: BoxDecoration(
                       // color: darkGreenColor,
                        border: Border.all(color: Color(0xff707070)),
                        borderRadius: BorderRadius.circular(15)
                      ),
                    ),
                   
                    Text("Address",
                    style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                    ),
                   
                    Container(
                      height: 23,
                      width: 23,
                      
                      decoration: BoxDecoration(
                        //color: darkGreenColor,
                        border: Border.all(color: Color(0xff707070)),
                        borderRadius: BorderRadius.circular(15)
                      ),
                    ),
                   
                    Text("Payment",
                    style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                    ),
                  ],
                ),
                
                      Container(
                        child: ListView(
                          shrinkWrap: true,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 10,),
                              child: Container(
                    height: 150,
                    width: 400,
                    child: Row(
                            children: [
                              Container(
                                height: 130,
                                width: 60,
                                child: Image(image: AssetImage("assets/image/aa.png"),
                                fit: BoxFit.fill,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: Column(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                          "Micro Nutrition Khatam",
                                          //textAlign: TextAlign.start,
                                          style: TextStyle(
                                            fontSize: 18.sp,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        SizedBox(height: 5.h,),
                                        Text(
                                          "120 gms",
                                          style: TextStyle(
                                            fontSize: 19.sp,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        SizedBox(height: 5.h,),
                                        Row(
                                          children: [
                                            Icon(Icons.currency_rupee),
                                            Text(
                                              "569.00",
                                              style: TextStyle(
                                                fontSize: 19.sp,
                                                color: Colors.black,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 5.h,),
                                        Row(
                                          children: [
                                            Icon(Icons.currency_rupee),
                                            Text(
                                              "450.00",
                                              style: TextStyle(
                                                fontSize: 19.sp,
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            SizedBox(width: 5.w,),
                                            Text(
                                              "25 Points",
                                              style: TextStyle(
                                                fontSize: 13.sp,
                                                color: Color(0xffF9A20D),
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                            SizedBox(width: 10.w,),
                                            Container(
                                              height: 30,
                                              width: 100,
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  InkWell(
                                                    onTap: (){},
                                                    child: Icon(Icons.remove,
                                                    size: 17,
                                                    color: Color(0xff016942),
                                                    )),
                                                  Container(
                                                    height: 30,
                                                    width: 35,
                                                    child: Center(child: Text("01")),
                                                    decoration: BoxDecoration(
                                                      border: Border.symmetric(
                                                        vertical:BorderSide(color: Color(0xff016942))
                                                        ),
                                                    ),
                                                  ),
                                                  InkWell(
                                                    onTap: (){},
                                                    child: Icon(Icons.add,
                                                    size: 17,
                                                    color: Color(0xff016942),
                                                    )),
                                                ],
                                              ),
                                              
                                              decoration: BoxDecoration(
                                                border: Border.all(color: Color(0xff016942)),
                                                borderRadius: BorderRadius.circular(10),
                                                color: Colors.white
                                              ),
                                            ),


                                          ],
                                        ),
                                  ],
                                ),
                              ),
                    ]),
                    
                    decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Color(0xff707070)),
                              color: Color(0xffE4E4E4),
                    ),
                  ),
                            ),
                          ],
                        ),
                      ),
                     // SizedBox(height: 320,),
                      // Row(
                       
                      //   children: [
                      //     Text(
                      //            "1 Iterms",
                      //             style: TextStyle(
                      //             fontSize: 15,
                      //             color:Colors.black,
                      //             fontWeight: FontWeight.w500,
                      //                 ),
                      //                 ),
                      //         Row(
                      //           children: [
                      //             Icon(Icons.currency_rupee,color: Color(0xff016942),),
                      //             Text(
                      //            "450.00",
                      //             style: TextStyle(
                      //             fontSize: 18.sp,
                      //             color:Color(0xff016942),
                      //             fontWeight: FontWeight.bold,
                      //                 ),
                      //                 ),
                      //           ],
                      //         ),
                      //         SizedBox(width: 5.w,),
                      //         Container(
                      //           height: 30,
                      //           width: 100,
                      //           child:
                      //            Center(
                      //              child: Text(
                      //              "25 Points Saved",
                      //               style: TextStyle(
                      //               fontSize: 13.sp,
                      //               color:Color(0xff016942),
                      //               fontWeight: FontWeight.bold,
                      //                   ),
                      //                   ),
                      //            ),
                      //           decoration: BoxDecoration(
                      //             borderRadius: BorderRadius.circular(10),
                      //             color: Color(0xffE4E4E4)
                      //           ),
                      //         ),
                      //         SizedBox(width: 5.w,),
                      //         InkWell(
                      //           onTap: (){
                      //              Navigator.push(
                      //              context,
                      //               MaterialPageRoute(builder: (context) => const AddressScreen()),
                      //             );
                      //           },
                      //           child: Container(
                      //             height: 38,
                      //             width: 125,
                      //             child:
                      //              Center(
                      //                child: Text(
                      //                "Delivery Address",
                      //                 style: TextStyle(
                      //                 fontSize: 15.sp,
                      //                 color:Colors.white,
                      //                 fontWeight: FontWeight.bold,
                      //                     ),
                      //                     ),
                      //              ),
                      //             decoration: BoxDecoration(
                      //               borderRadius: BorderRadius.circular(20),
                      //               color: Color(0xff016942)
                      //             ),
                      //           ),
                      //         ),
                      //   ],
                      // ),
                      

                   
                
              ],
            ),
          ),
        ],
      ),

      bottomNavigationBar: Obx(
        () => 
          Container(
            height: 130,
            child: Column(
             
              children: [
                 Row(
                         mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                                   "1 Iterms",
                                    style: TextStyle(
                                    fontSize: 15,
                                    color:Colors.black,
                                    fontWeight: FontWeight.w500,
                                        ),
                                        ),
                                Row(
                                  children: [
                                    Icon(Icons.currency_rupee,color: Color(0xff016942),),
                                    Text(
                                   "450.00",
                                    style: TextStyle(
                                    fontSize: 18.sp,
                                    color:Color(0xff016942),
                                    fontWeight: FontWeight.bold,
                                        ),
                                        ),
                                  ],
                                ),
                                SizedBox(width: 3.w,),
                                Container(
                                  height: 30,
                                  width: 100.w,
                                  child:
                                   Center(
                                     child: Text(
                                     "25 Points Saved",
                                      style: TextStyle(
                                      fontSize: 13.sp,
                                      color:Color(0xff016942),
                                      fontWeight: FontWeight.bold,
                                          ),
                                          ),
                                   ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Color(0xffE4E4E4)
                                  ),
                                ),
                                SizedBox(width: 3.w,),
                                InkWell(
                                  onTap: (){
                                     Navigator.push(
                                     context,
                                      MaterialPageRoute(builder: (context) => const AddressScreen()),
                                    );
                                  },
                                  child: Container(
                                    height: 38,
                                    width: 115,
                                    child:
                                     Center(
                                       child: Text(
                                       "Delivery Address",
                                        style: TextStyle(
                                        fontSize: 13.sp,
                                        color:Colors.white,
                                        fontWeight: FontWeight.bold,
                                            ),
                                            ),
                                     ),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Color(0xff016942)
                                    ),
                                  ),
                                ),
                          ],
                        ),

                        Container(
                          height: 100,
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
