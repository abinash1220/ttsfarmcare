import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:ttsfarmcare/constants/app_colors.dart';
import 'package:ttsfarmcare/view/profile_screen/profile_page.dart';

import '../../controllers/home_Controllers.dart';
import '../home_Screen/home_Screen.dart';
import '../home_Screen/view_cart.screen.dart';

class OrderHistory extends StatefulWidget {
  const OrderHistory({super.key});

  @override
  State<OrderHistory> createState() => _OrderHistoryState();
}

class _OrderHistoryState extends State<OrderHistory> {

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
                //SizedBox(width: 5,),
                Text(
                  "Order History",
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
            padding: const EdgeInsets.only(top: 140,left: 15,right: 15),
            child: ListView(
             shrinkWrap: true,
             children: [
               Container(
             height: 100,
             width: 350,
             child: Row(
               children: [
                 Padding(
                   padding: const EdgeInsets.only(left: 10),
                   child: Image(image: AssetImage("assets/image/aa.png")),
                 ),
                 SizedBox(width: 20,),
                 Container(
                   height: 100,
                   width: 1,
                   color: Color(0xff686868),
                   
                 ),
                Padding(
                  padding: const EdgeInsets.only(top: 5,left: 10),
                  child: Column(
                   children: [
                     Text("Micro Nutrition Jeevan",
                     style: TextStyle(
                       fontSize: 22,
                       fontWeight: FontWeight.w500,
                     ),
                     ),
                     SizedBox(height: 5,),
                     Row(
                       children: [
                         Text("2 Items",
                     style: TextStyle(
                       fontSize: 17,
                       //fontWeight: FontWeight.w500,
                     ),
                     ),
                     SizedBox(width: 90,),
                     Text("Yesterday",
                     style: TextStyle(
                       fontSize: 17,
                       //fontWeight: FontWeight.w500,
                     ),
                     ),
                       ],
                     ),
                     SizedBox(height: 5,),
                     Padding(
                       padding: const EdgeInsets.only(right: 100),
                       child: Row(
                         children: [
                            Icon(Icons.star,color:Color(0xffE4A819),),
                       Icon(Icons.star,color: Color(0xffE4A819),),
                       Icon(Icons.star,color: Color(0xffE4A819),),
                       Icon(Icons.star,color: Color(0xff808080),),
                       Icon(Icons.star,color: Color(0xff808080),),

                         ],
                       ),
                     ),
                    
                   ],
                  ),
                ),
               ],
             ),
             decoration: BoxDecoration(
               border: Border.all(color: Color(0xff686868)),
               color: Color(0xffE4E4E4),
               ),
            ),
            SizedBox(height: 20,),
            Container(
             height: 100,
             width: 350,
             child: Row(
               children: [
                 Padding(
                   padding: const EdgeInsets.only(left: 10),
                   child: Image(image: AssetImage("assets/image/aa.png")),
                 ),
                 SizedBox(width: 20,),
                 Container(
                   height: 100,
                   width: 1,
                   color: Color(0xff686868),
                   
                 ),
                Padding(
                  padding: const EdgeInsets.only(top: 5,left: 10),
                  child: Column(
                   children: [
                     Text("Micro Nutrition Jeevan",
                     style: TextStyle(
                       fontSize: 22,
                       fontWeight: FontWeight.w500,
                     ),
                     ),
                     SizedBox(height: 5,),
                     Row(
                       children: [
                         Text("2 Items",
                     style: TextStyle(
                       fontSize: 17,
                       //fontWeight: FontWeight.w500,
                     ),
                     ),
                     SizedBox(width: 90,),
                     Text("Yesterday",
                     style: TextStyle(
                       fontSize: 17,
                       //fontWeight: FontWeight.w500,
                     ),
                     ),
                       ],
                     ),
                     SizedBox(height: 5,),
                     Padding(
                       padding: const EdgeInsets.only(right: 100),
                       child: Row(
                         children: [
                            Icon(Icons.star,color:Color(0xffE4A819),),
                       Icon(Icons.star,color: Color(0xffE4A819),),
                       Icon(Icons.star,color: Color(0xffE4A819),),
                       Icon(Icons.star,color: Color(0xff808080),),
                       Icon(Icons.star,color: Color(0xff808080),),

                         ],
                       ),
                     ),
                    
                   ],
                  ),
                ),
               ],
             ),
             decoration: BoxDecoration(
               border: Border.all(color: Color(0xff686868)),
               color: Color(0xffE4E4E4),
               ),
            ),
            SizedBox(height: 20,),
            Container(
             height: 100,
             width: 350,
             child: Row(
               children: [
                 Padding(
                   padding: const EdgeInsets.only(left: 10),
                   child: Image(image: AssetImage("assets/image/aa.png")),
                 ),
                 SizedBox(width: 20,),
                 Container(
                   height: 100,
                   width: 1,
                   color: Color(0xff686868),
                   
                 ),
                Padding(
                  padding: const EdgeInsets.only(top: 5,left: 10),
                  child: Column(
                   children: [
                     Text("Micro Nutrition Jeevan",
                     style: TextStyle(
                       fontSize: 22,
                       fontWeight: FontWeight.w500,
                     ),
                     ),
                     SizedBox(height: 5,),
                     Row(
                       children: [
                         Text("2 Items",
                     style: TextStyle(
                       fontSize: 17,
                       //fontWeight: FontWeight.w500,
                     ),
                     ),
                     SizedBox(width: 90,),
                     Text("Yesterday",
                     style: TextStyle(
                       fontSize: 17,
                       //fontWeight: FontWeight.w500,
                     ),
                     ),
                       ],
                     ),
                     SizedBox(height: 5,),
                     Padding(
                       padding: const EdgeInsets.only(right: 100),
                       child: Row(
                         children: [
                            Icon(Icons.star,color:Color(0xffE4A819),),
                       Icon(Icons.star,color: Color(0xffE4A819),),
                       Icon(Icons.star,color: Color(0xffE4A819),),
                       Icon(Icons.star,color: Color(0xff808080),),
                       Icon(Icons.star,color: Color(0xff808080),),

                         ],
                       ),
                     ),
                    
                   ],
                  ),
                ),
               ],
             ),
             decoration: BoxDecoration(
               border: Border.all(color: Color(0xff686868)),
               color: Color(0xffE4E4E4),
               ),
            ),
            SizedBox(height: 20,),
            Container(
             height: 100,
             width: 350,
             child: Row(
               children: [
                 Padding(
                   padding: const EdgeInsets.only(left: 10),
                   child: Image(image: AssetImage("assets/image/aa.png")),
                 ),
                 SizedBox(width: 20,),
                 Container(
                   height: 100,
                   width: 1,
                   color: Color(0xff686868),
                   
                 ),
                Padding(
                  padding: const EdgeInsets.only(top: 5,left: 10),
                  child: Column(
                   children: [
                     Text("Micro Nutrition Jeevan",
                     style: TextStyle(
                       fontSize: 22,
                       fontWeight: FontWeight.w500,
                     ),
                     ),
                     SizedBox(height: 5,),
                     Row(
                       children: [
                         Text("2 Items",
                     style: TextStyle(
                       fontSize: 17,
                       //fontWeight: FontWeight.w500,
                     ),
                     ),
                     SizedBox(width: 90,),
                     Text("Yesterday",
                     style: TextStyle(
                       fontSize: 17,
                       //fontWeight: FontWeight.w500,
                     ),
                     ),
                       ],
                     ),
                     SizedBox(height: 5,),
                     Padding(
                       padding: const EdgeInsets.only(right: 100),
                       child: Row(
                         children: [
                            Icon(Icons.star,color:Color(0xffE4A819),),
                       Icon(Icons.star,color: Color(0xffE4A819),),
                       Icon(Icons.star,color: Color(0xffE4A819),),
                       Icon(Icons.star,color: Color(0xff808080),),
                       Icon(Icons.star,color: Color(0xff808080),),

                         ],
                       ),
                     ),
                    
                   ],
                  ),
                ),
               ],
             ),
             decoration: BoxDecoration(
               border: Border.all(color: Color(0xff686868)),
               color: Color(0xffE4E4E4),
               ),
            ),
            SizedBox(height: 20,),
            Container(
             height: 100,
             width: 350,
             child: Row(
               children: [
                 Padding(
                   padding: const EdgeInsets.only(left: 10),
                   child: Image(image: AssetImage("assets/image/aa.png")),
                 ),
                 SizedBox(width: 20,),
                 Container(
                   height: 100,
                   width: 1,
                   color: Color(0xff686868),
                   
                 ),
                Padding(
                  padding: const EdgeInsets.only(top: 5,left: 10),
                  child: Column(
                   children: [
                     Text("Micro Nutrition Jeevan",
                     style: TextStyle(
                       fontSize: 22,
                       fontWeight: FontWeight.w500,
                     ),
                     ),
                     SizedBox(height: 5,),
                     Row(
                       children: [
                         Text("2 Items",
                     style: TextStyle(
                       fontSize: 17,
                       //fontWeight: FontWeight.w500,
                     ),
                     ),
                     SizedBox(width: 90,),
                     Text("Yesterday",
                     style: TextStyle(
                       fontSize: 17,
                       //fontWeight: FontWeight.w500,
                     ),
                     ),
                       ],
                     ),
                     SizedBox(height: 5,),
                     Padding(
                       padding: const EdgeInsets.only(right: 100),
                       child: Row(
                         children: [
                            Icon(Icons.star,color:Color(0xffE4A819),),
                       Icon(Icons.star,color: Color(0xffE4A819),),
                       Icon(Icons.star,color: Color(0xffE4A819),),
                       Icon(Icons.star,color: Color(0xff808080),),
                       Icon(Icons.star,color: Color(0xff808080),),

                         ],
                       ),
                     ),
                    
                   ],
                  ),
                ),
               ],
             ),
             decoration: BoxDecoration(
               border: Border.all(color: Color(0xff686868)),
               color: Color(0xffE4E4E4),
               ),
            ),
             

             ],
            ),
          ),
        ]),
        bottomNavigationBar: Obx(
        () => 
          Container(
            height: 90,
            child: Column(
             
              children: [
                 

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