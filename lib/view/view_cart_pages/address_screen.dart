import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ttsfarmcare/view/view_cart_pages/payment_screen.dart';
import 'package:ttsfarmcare/view/view_cart_pages/view_cart_screen.dart';

import '../../constants/app_colors.dart';
import '../../controllers/home_Controllers.dart';

class CartAddresScreen extends StatefulWidget {
  const CartAddresScreen({super.key});

  @override
  State<CartAddresScreen> createState() => _CartAddresScreenState();
}

class _CartAddresScreenState extends State<CartAddresScreen> {

  final homeController = Get.find<HomeControllers>();
  bool isCheked = false;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
          Get.back();
        },
          child: Icon(Icons.arrow_back,)
        ),
        title: Text("Delivery Address",
            style: GoogleFonts.montserrat(
              fontWeight: FontWeight.bold,
            ),
            ),
            titleSpacing: -10,
            actions: [
               Padding(
                 padding: const EdgeInsets.only(right: 20),
                 child: Image(
                  height: 45,width: 45,
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
          body: Container(
               decoration: BoxDecoration(
              color: Color(0xff289445),
        ),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topRight: Radius.circular(40))),
                  child: Column(
                    children: [
                      Padding(
                      padding: const EdgeInsets.only(top: 20, left: 20,right: 20),
                      child: Column(children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            InkWell(
                              onTap: (){
                                 Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ViewCartPage()),
                        );
                              },
                              child: Container(
                                height: 23,
                                width: 23,
                                decoration: BoxDecoration(
                                    // color: darkGreenColor,
                                    border: Border.all(color: Color(0xff707070)),
                                    borderRadius: BorderRadius.circular(15)),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Cart",
                              style: GoogleFonts.montserrat(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              height: 23,
                              width: 23,
                              child: Image(
                                  image: AssetImage(
                                      "assets/images/sucessfully.png")),
                              decoration: BoxDecoration(
                                  // color: darkGreenColor,
                                  border: Border.all(color: Color(0xff707070)),
                                  borderRadius: BorderRadius.circular(15)),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Address",
                              style: GoogleFonts.montserrat(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            InkWell(
                              onTap: (){
                                 Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const CartPaymentScreen()),
                        );
                              },
                              child: Container(
                                height: 23,
                                width: 23,
                                decoration: BoxDecoration(
                                    //color: darkGreenColor,
                                    border: Border.all(color: Color(0xff707070)),
                                    borderRadius: BorderRadius.circular(15)),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Payment",
                              style: GoogleFonts.montserrat(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ]),
                    ),
                    SizedBox(height: 10,),
                    //
                    KeyboardVisibilityBuilder(
      builder: (context, isKeyboardVisible) {
                        return Container(
                height: size.height*0.77,
                child: Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: ListView(
                        shrinkWrap: true,
                        children: [
                          Text(
                            "Choose Delivery Area",
                            style: GoogleFonts.montserrat(
                              fontSize: 17,
                              color: darkGreenColor,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 0, right: 15),
                            child: Container(
                              height: 58,
                              width: size.width,
                              child: DropdownSearch<String>(
                                popupProps: PopupProps.menu(
                                  showSelectedItems: true,
                                  showSearchBox: true,
                                  searchFieldProps: TextFieldProps(
                                      decoration: InputDecoration(
                                          suffixIcon: Icon(
                                    Icons.search,
                                  ))),
                                ),
                                items: [
                                "Ariyalur",
                                "Chengalpattu", 
                                "Chennai",
                                "Coimbatore",
                                "Cuddalore",
                                "Dharmapuri",
                                "Dindigul",
                                "Erode",
                                "Kallakurichi",
                                "Kancheepuram",
                                "Karur",
                                "Krishnagiri",
                                "Madurai",
                                "Mayiladuthurai",
                                "Nagapattinam",
                                "Kanyakumari",
                                "Namakkal",
                                "Perambalur",
                                "Pudukottai",
                                "Ramanathapuram",
                                "Ranipet",
                                "Salem",
                                "Sivagangai",
                                "Tenkasi",
                                "Thanjavur",
                                "Theni",
                                "Thiruvallur",
                                "Thiruvarur",
                                "Tuticorin",
                                "Trichirappalli",
                                "Thirunelveli",
                                "Tirupathur",
                                "Tiruppur",
                                "Tiruvannamalai",
                                "Nilgiris",
                                "Vellore",
                                "Viluppuram",
                                "Virudhunagar",
                                ],
                                dropdownDecoratorProps: DropDownDecoratorProps(
                                  dropdownSearchDecoration: InputDecoration(
                                    iconColor: Color(0xff517937),
                                    isDense: true,
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.all(Radius.circular(5)),
                                        borderSide: BorderSide(
                                          color: const Color(0xff517937),
                                        )),
                                    hintText: "Choose Location",
                                    hintStyle: GoogleFonts.montserrat(),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Address Type",
                            style: GoogleFonts.montserrat(
                              fontSize: 17,
                              color: darkGreenColor,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Obx(
                              () => (Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
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

                                           Image(height: 20,width: 20,
                                            image: AssetImage("assets/icons/home (3).png"),
                                          color: homeController.home.value == 1
                                                  ? darkGreenColor
                                                  : Colors.grey
                                          ),
                                          Text(
                                            "Home",
                                            style: GoogleFonts.montserrat(
                                                fontWeight: FontWeight.bold,
                                                color:
                                                    homeController.home.value == 1
                                                        ? darkGreenColor
                                                        : Colors.grey),
                                          ),
                                        ],
                                      )),
                                    ),
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
                                          Image(height: 20,width: 20,
                                            image: AssetImage("assets/icons/suitcase.png"),
                                          color: homeController.home.value == 2
                                                  ? darkGreenColor
                                                  : Colors.grey
                                          ),
                                         SizedBox(width: 2,),
                                          Text(
                                            "Work",
                                            style: GoogleFonts.montserrat(
                                                fontWeight: FontWeight.bold,
                                                color:
                                                    homeController.home.value == 2
                                                        ? darkGreenColor
                                                        : Colors.grey),
                                          ),
                                        ],
                                      )),
                                    ),
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
                                          Image(
                                            height: 20,width: 20,
                                            image: AssetImage("assets/icons/orientation.png"),
                                          color: homeController.home.value == 3
                                                  ? darkGreenColor
                                                  : Colors.grey
                                          ),
                                          Text(
                                            "Other",
                                            style: GoogleFonts.montserrat(
                                                fontWeight: FontWeight.bold,
                                                color:
                                                    homeController.home.value == 3
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
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 15),
                            child: Container(
                              height: 50,
                              width: size.width,
                              child: TextFormField(
                                // controller: usernamecontroller,
                                cursorColor: darkGreenColor,
                                decoration: InputDecoration(
                                 focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide(color: darkGreenColor,width: 1.5)
                        ),
                        enabledBorder:OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide(color: Colors.grey)
                        ), 
                                  hintText: "Flat, Building, Company, Apartment",
                                  isDense: true,
                                  hintStyle: GoogleFonts.montserrat(
                                      //color: const Color(0xff517937),
                                      ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 15),
                            child: Container(
                              height: 50,
                              width: size.width,
                              child: TextFormField(
                                // controller: usernamecontroller,
                                cursorColor: darkGreenColor,
                                decoration: InputDecoration(
                                  focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide(color: darkGreenColor,width: 1.5)
                        ),
                        enabledBorder:OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide(color: Colors.grey)
                        ), 
                                  hintText: "Area, Colony, Street, Sector, Village",
                                  isDense: true,
                                  hintStyle: GoogleFonts.montserrat(
                                      //color: const Color(0xff517937),
                                      ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 15),
                            child: Container(
                              height: 50,
                              width: size.width,
                              child: TextFormField(
                                // controller: usernamecontroller,
                                cursorColor: darkGreenColor,
                                decoration: InputDecoration(
                                  focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide(color: darkGreenColor,width: 1.5)
                        ),
                        enabledBorder:OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide(color: Colors.grey)
                        ), 
                                  hintText: "Landmark (Optional)",
                                  isDense: true,
                                  hintStyle: GoogleFonts.montserrat(
                                      //color: const Color(0xff517937),
                                      ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 15),
                            child: Container(
                              height: 50,
                              width: size.width,
                              child: TextFormField(
                                // controller: usernamecontroller,
                                cursorColor: darkGreenColor,
                                decoration: InputDecoration(
                                 focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide(color: darkGreenColor,width: 1.5)
                        ),
                        enabledBorder:OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide(color: Colors.grey)
                        ), 
                                  hintText: "Add City",
                                  isDense: true,
                                  hintStyle: GoogleFonts.montserrat(
                                      //color: const Color(0xff517937),
                                      ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 15),
                            child: Container(
                              height: 50,
                              width: size.width,
                              child: TextFormField(
                                // controller: usernamecontroller,
                                cursorColor: darkGreenColor,
                                decoration: InputDecoration(
                                  focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide(color: darkGreenColor,width: 1.5)
                        ),
                        enabledBorder:OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide(color: Colors.grey)
                        ), 
                                  hintText: "Add State",
                                  isDense: true,
                                  hintStyle: GoogleFonts.montserrat(
                                      //color: const Color(0xff517937),
                                      ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 15),
                            child: Container(
                              height: 50,
                              width: size.width,
                              child: TextFormField(
                                keyboardType: TextInputType.number,
                                // controller: usernamecontroller,
                                cursorColor: darkGreenColor,
                                decoration: InputDecoration(
                                 focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide(color: darkGreenColor,width: 1.5)
                        ),
                        enabledBorder:OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide(color: Colors.grey)
                        ), 
                                  hintText: "Add Pincode",
                                  isDense: true,
                                  hintStyle: GoogleFonts.montserrat(
                                      //color: const Color(0xff517937),
                                      ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                          //  mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Checkbox(
                                  activeColor: Color(0xff517937),
                                  value: isCheked,
                                  onChanged: (value) {
                                    setState(() {
                                      isCheked = !isCheked;
                                    });
                                  }),
                              Container(
                                width: size.width*0.8,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Default For Delivery",
                                    style: GoogleFonts.montserrat(),
                                    ),
                                    InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const CartPaymentScreen()),
                                    );
                                  },
                                  child: Container(
                                    height: 35,
                                    width: 130,
                                    child: Center(
                                      child: Text(
                                        "Payments",
                                        style: GoogleFonts.montserrat(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500
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
                              ),
                              
                            ],
                          ),
                           if(isKeyboardVisible)  Container(
                            height: 270,)
                        ],
                  ),
                ),
              );
                      }
                    ),
                    ]),
            ),
            ),
    );
  }
}