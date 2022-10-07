import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:ttsfarmcare/constants/app_colors.dart';
import 'package:ttsfarmcare/view/home_Screen/payment_Screen.dart';

import '../../controllers/home_Controllers.dart';

class AddressScreen extends StatefulWidget {
  const AddressScreen({super.key});

  @override
  State<AddressScreen> createState() => _AddressScreenState();
}

class _AddressScreenState extends State<AddressScreen> {

final homeController = Get.find<HomeControllers>();

bool isCheked = false;

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
                  "Delivery Address",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(width: 100,),
                Image(
                    image: AssetImage("assets/images/Group 3466.png")),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 140,left: 20),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 23,
                        width: 23,
                        decoration: BoxDecoration(
                         // color: darkGreenColor,
                          border: Border.all(color: Color(0xff707070)),
                          borderRadius: BorderRadius.circular(15)
                        ),
                      ),
                      SizedBox(width: 10,),
                      Text("Cart",
                      style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                      ),
                      SizedBox(width: 10,),
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
                      SizedBox(width: 10,),
                      Text("Address",
                      style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                      ),
                      SizedBox(width: 10,),
                      Container(
                        height: 23,
                        width: 23,
                        
                        decoration: BoxDecoration(
                          //color: darkGreenColor,
                          border: Border.all(color: Color(0xff707070)),
                          borderRadius: BorderRadius.circular(15)
                        ),
                      ),
                      SizedBox(width: 10,),
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
                    height: size.height*0.75,
                    child: ListView(
                      shrinkWrap: true,
                      children: [
                        Text("Choose Delivery Area",
                        style: TextStyle(
                        fontSize: 17,
                        color: darkGreenColor,
                        fontWeight: FontWeight.w500,
                      ),
                        ),
                        SizedBox(height: 10,),
                        Padding(
                          padding: const EdgeInsets.only(left: 0,right: 15),
                          child: Container(
                            height: 56,
                            width:size.width,
                            child: DropdownSearch<String>(
                              popupProps: PopupProps.menu(
                                showSelectedItems: true,
                                showSearchBox: true,
                                searchFieldProps: TextFieldProps(
                                  decoration: InputDecoration(
                                    suffixIcon: Icon(Icons.search,)
                                  )
                                ),
                               
                              ),
                              items: ["chennai","vellore","trichy","salem"],
                              dropdownDecoratorProps: DropDownDecoratorProps(
                                dropdownSearchDecoration: InputDecoration(
                                  iconColor: Color(0xff517937),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(5)),
                                    borderSide: BorderSide(color: const Color(0xff517937), )
                                    ),
                                 hintText: "Choose Location",
                                 hintStyle: TextStyle(
                                ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10,),
                    Text("Address Type",
                        style: TextStyle(
                        fontSize: 17,
                        color: darkGreenColor,
                        fontWeight: FontWeight.w500,
                      ),
                        ),
                        SizedBox(height: 10,),
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Obx(
                      () => (Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () {
                                homeController.home(1);
            
                                // Navigator.push(
                                //   context,
                                //   MaterialPageRoute(builder: (context) => const LoginPage()),
                                // );
                              },
                              child: Container(
                                height: 35,
                                width: 100,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: homeController.home.value == 1
                                              ? darkGreenColor
                                              : Color(0xffF3F3F3),
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color(0xffF3F3F3)
                                 // color: homeController.home.value == 1
                                     // ? Color(0xffF3F3F3)
                                     // : darkGreenColor,
                                ),
                                child: Center(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Icon(Icons.home,
                                        color: homeController.home.value == 1
                                      ? darkGreenColor
                                      :Colors.grey),
                                        Text(
                                  "Home",
                                  style: TextStyle(
                                         fontWeight: FontWeight.bold,
                                          color: homeController.home.value == 1
                                              ? darkGreenColor
                                              : Colors.grey),
                                ),
                                      ],
                                    )),
            
                              ),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            InkWell(
                              onTap: () {
                                homeController.home(2);
                                // Navigator.push(
                                //   context,
                                //   MaterialPageRoute(builder: (context) => const LoginPage()),
                                // );
                              },
                              child: Container(
                                height: 35,
                                width: 100,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: homeController.home.value == 2
                                              ? darkGreenColor
                                              : Color(0xffF3F3F3),
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color(0xffF3F3F3),
                                ),
                                child: Center(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Icon(Icons.home,
                                        color: homeController.home.value == 2
                                      ? darkGreenColor
                                      :Colors.grey),
                                        Text(
                                         "Work",
                                        style: TextStyle(
                                         fontWeight: FontWeight.bold,
                                          color: homeController.home.value == 2
                                              ? darkGreenColor
                                              : Colors.grey),
                                ),
                                      ],
                                    )),
                              ),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            InkWell(
                              onTap: () {
                                homeController.home(3);
            
                                // Navigator.push(
                                //   context,
                                //   MaterialPageRoute(builder: (context) => const LoginPage()),
                                // );
                              },
                              child: Container(
                                height: 35,
                                width: 100,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: homeController.home.value == 3
                                              ? darkGreenColor
                                              : Color(0xffF3F3F3),
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                 color: Color(0xffF3F3F3),
                                ),
                                child: Center(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Icon(Icons.home,
                                        color: homeController.home.value == 3
                                      ? darkGreenColor
                                      :Colors.grey),
                                        Text(
                                       "Other",
                                         style: TextStyle(
                                         fontWeight: FontWeight.bold,
                                          color: homeController.home.value == 3
                                              ? darkGreenColor
                                              : Colors.grey),
                                ),
                                      ],
                                    )),
                              ),
                            ),
                          ],
                      )),
                    ),
                        ),
                        SizedBox(height: 20,),
                        Padding(
                          padding: const EdgeInsets.only(right: 15),
                          child: Container(
                            height: 50,
                            width: size.width,
                            child: TextFormField(
                             // controller: usernamecontroller,
                              decoration: InputDecoration(
                               
                                border: OutlineInputBorder(
                                  
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                hintText: "Flat, Building, Company, Apartment",
                                hintStyle: TextStyle(
                                  //color: const Color(0xff517937),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 20,),
                        Padding(
                          padding: const EdgeInsets.only(right: 15),
                          child: Container(
                            height: 50,
                            width: size.width,
                            child: TextFormField(
                             // controller: usernamecontroller,
                              decoration: InputDecoration(
                               
                                border: OutlineInputBorder(
                                  
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                hintText: "Area, Colony, Street, Sector, Village",
                                hintStyle: TextStyle(
                                  //color: const Color(0xff517937),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 20,),
                        Padding(
                          padding: const EdgeInsets.only(right: 15),
                          child: Container(
                            height: 50,
                            width: size.width,
                            child: TextFormField(
                             // controller: usernamecontroller,
                              decoration: InputDecoration(
                               
                                border: OutlineInputBorder(
                                  
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                hintText: "Landmark (Optional)",
                                hintStyle: TextStyle(
                                  //color: const Color(0xff517937),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 20,),
                        Padding(
                          padding: const EdgeInsets.only(right: 15),
                          child: Container(
                            height: 50,
                            width: size.width,
                            child: TextFormField(
                             // controller: usernamecontroller,
                              decoration: InputDecoration(
                               
                                border: OutlineInputBorder(
                                  
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                hintText: "Add City",
                                hintStyle: TextStyle(
                                  //color: const Color(0xff517937),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 20,),
                        Padding(
                          padding: const EdgeInsets.only(right: 15),
                          child: Container(
                            height: 50,
                            width: size.width,
                            child: TextFormField(
                             // controller: usernamecontroller,
                              decoration: InputDecoration(
                               
                                border: OutlineInputBorder(
                                  
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                hintText: "Add State",
                                hintStyle: TextStyle(
                                  //color: const Color(0xff517937),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 20,),
                        Padding(
                          padding: const EdgeInsets.only(right: 15),
                          child: Container(
                            height: 50,
                            width: size.width,
                            child: TextFormField(
                             // controller: usernamecontroller,
                              decoration: InputDecoration(
                               
                                border: OutlineInputBorder(
                                  
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                hintText: "Add Pincode",
                                hintStyle: TextStyle(
                                  //color: const Color(0xff517937),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10,),
                        Row(
                         // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Checkbox(
                        activeColor: Color(0xff517937),
                        value: isCheked,
                        onChanged: (value) {
                          setState(() {
                            isCheked = !isCheked;
                          });
                        }),
                    Text("Default For Delivery"),
                    SizedBox(width: 50,),
                    InkWell(
                      onTap: (){
                        Navigator.push(
                                   context,
                                   MaterialPageRoute(builder: (context) => const PaymentScreen()),
                                 );
                      },
                      child: Container(
                        height: 35,
                        width: 130,
                        child: Center(
                          child: Text("Payments",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                          ),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: darkGreenColor,
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
            ),
          ),
        ],
      ),
    );
  }
}