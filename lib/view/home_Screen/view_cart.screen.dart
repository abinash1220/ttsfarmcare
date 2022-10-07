import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:ttsfarmcare/constants/app_colors.dart';
import 'package:ttsfarmcare/view/order_history_page/order_history_screen.dart';

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
            padding: const EdgeInsets.only(top: 50, left: 10),
            child: Row(
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
                SizedBox(width: 5,),
                Text(
                  "View Cart",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(width: 180,),
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
                SizedBox(height: 30,),
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
                                      fontSize: 18,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(height: 5,),
                                  Text(
                                    "120 gms",
                                    style: TextStyle(
                                      fontSize: 19,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(height: 5,),
                                  Row(
                                    children: [
                                      Icon(Icons.currency_rupee),
                                      Text(
                                        "569.00",
                                        style: TextStyle(
                                          fontSize: 19,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 5,),
                                  Row(
                                    children: [
                                      Icon(Icons.currency_rupee),
                                      Text(
                                        "450.00",
                                        style: TextStyle(
                                          fontSize: 19,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(width: 5,),
                                      Text(
                                        "25 Points",
                                        style: TextStyle(
                                          fontSize: 13,
                                          color: Color(0xffF9A20D),
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      SizedBox(width: 10,),
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
                      SizedBox(height: 320,),
                      Row(
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
                                  fontSize: 18,
                                  color:Color(0xff016942),
                                  fontWeight: FontWeight.bold,
                                      ),
                                      ),
                                ],
                              ),
                              SizedBox(width: 5,),
                              Container(
                                height: 30,
                                width: 100,
                                child:
                                 Center(
                                   child: Text(
                                   "25 Points Saved",
                                    style: TextStyle(
                                    fontSize: 13,
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
                              SizedBox(width: 5,),
                              InkWell(
                                onTap: (){
                                   Navigator.push(
                                   context,
                                    MaterialPageRoute(builder: (context) => const AddressScreen()),
                                  );
                                },
                                child: Container(
                                  height: 38,
                                  width: 125,
                                  child:
                                   Center(
                                     child: Text(
                                     "Delivery Address",
                                      style: TextStyle(
                                      fontSize: 15,
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
                      

                   
                
              ],
            ),
          ),
        ],
      ),

      bottomNavigationBar: Obx(
        () => (Stack(children: [
          Image(image: AssetImage("assets/images/Group 3362.png")),
          Padding(
            padding: const EdgeInsets.only(top: 40, left: 50),
            child: (Row(
              children: [
                InkWell(
                  onTap: () {
                    homeController.bottomIcon(1);
                    Navigator.push(
                                   context,
                                   MaterialPageRoute(builder: (context) => const HomeScreen()),
                                 );
                  },
                  child: Image(
                    image: AssetImage("assets/images/home.png"),
                    color: homeController.bottomIcon == 1
                        ? Colors.white
                        : Colors.black,
                  ),
                ),
                SizedBox(
                  width: 60,
                ),
                InkWell(
                  onTap: () {
                    homeController.bottomIcon(2);
                    Navigator.push(
                             context,
                             MaterialPageRoute(builder: (context) => const ViewCartScreen()),
                           );
                  },
                  child: Image(
                    image: AssetImage("assets/images/shop.png"),
                    color: homeController.bottomIcon == 2
                        ? Colors.white
                        : Colors.black,
                  ),
                ),
                SizedBox(
                  width: 60,
                ),
                InkWell(
                  onTap: () {
                    homeController.bottomIcon(3);
                    Navigator.push(
                             context,
                             MaterialPageRoute(builder: (context) => const OrderHistory()),
                           );
                  },
                  child: Image(
                    image: AssetImage("assets/images/Path 38.png"),
                    color: homeController.bottomIcon == 3
                        ? Colors.white
                        : Colors.black,
                  ),
                ),
                SizedBox(
                  width: 60,
                ),
                InkWell(
                  onTap: () {
                    homeController.bottomIcon(4);
                  },
                  child: Image(
                    image: AssetImage("assets/images/profile.png"),
                    color: homeController.bottomIcon == 4
                        ? Colors.white
                        : Colors.black,
                  ),
                ),
              ],
            )),
          ),
          Positioned(
            bottom: 15,
            left: 42,
            child: Row(
              children: [
                Text(
                  "Home",
                  style: TextStyle(
                    color: homeController.bottomIcon == 1
                        ? Colors.white
                        : Colors.black,
                  ),
                ),
                SizedBox(
                  width: 50,
                ),
                Text(
                  "Cart",
                  style: TextStyle(
                    color: homeController.bottomIcon == 2
                        ? Colors.white
                        : Colors.black,
                  ),
                ),
                SizedBox(
                  width: 50,
                ),
                Text(
                  "History",
                  style: TextStyle(
                    color: homeController.bottomIcon == 3
                        ? Colors.white
                        : Colors.black,
                  ),
                ),
                SizedBox(
                  width: 50,
                ),
                Text(
                  "Profile",
                  style: TextStyle(
                    color: homeController.bottomIcon == 4
                        ? Colors.white
                        : Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ])),
      ),

    );
  }
}
