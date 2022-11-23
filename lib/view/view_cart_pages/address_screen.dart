import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ttsfarmcare/controllers/add_address_api_controllers/get_address_api_controller.dart';
import 'package:ttsfarmcare/view/home_Screen/home_navigationbar.dart';
import 'package:ttsfarmcare/view/view_cart_pages/place_order_screen.dart';
import 'package:ttsfarmcare/view/view_cart_pages/view_cart_screen.dart';

import '../../constants/app_colors.dart';
import '../../controllers/add_address_api_controllers/add_address_api_controller.dart';
import '../../controllers/home_Controllers.dart';
import '../../models/get_address_model.dart';

class CartAddresScreen extends StatefulWidget {
  
  const CartAddresScreen({super.key});

  @override
  State<CartAddresScreen> createState() => _CartAddresScreenState();
}

class _CartAddresScreenState extends State<CartAddresScreen> {

  final addAddressController = Get.find<AddAddressController>();

  final getAddressControllers = Get.find<GetAddressControllers>();

  final homeController = Get.find<HomeControllers>();
  bool isCheked = false;
 
 TextEditingController  homeaController = TextEditingController();
  TextEditingController streetController = TextEditingController();
  TextEditingController areaController = TextEditingController();
  TextEditingController landmarkController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController stateController = TextEditingController();
  TextEditingController pincodeController = TextEditingController();
  TextEditingController loctionController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getAddressDetails();
  }
  
 

  getAddressDetails()async{
   Address address = await getAddressControllers.getAllAddress();
  // Address address = addressList.last;
   streetController.text = address.street;
   areaController.text = address.area;
   landmarkController.text = address.landmark;
   cityController.text = address.city;
   stateController.text = address.state;
   pincodeController.text = address.pincode;
   loctionController.text = address.state;
   print(address.city);
   if(address.type == "home" ){
    homeController.home.value=1;
   }else if(address.type == "work"){
    homeController.home.value=2;
   }else if(address.type == "other"){
    homeController.home.value=3;
   }
  
   setState(() {
     
   });
  }

  

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
          body:LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          print(constraints.maxHeight);
              return Container(
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
                                  builder: (context) =>HomeNavigationBar(index: 1,)),
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
                               
                                Text(
                                  "Order",
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
                    height:constraints.maxHeight>570 ? size.height*0.77 : size.height*0.74,
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
                                    onChanged: ((value) {
                                setState(() {
                                  loctionController
                                      .text = value.toString();
                                });
                              }),
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
                                     controller: streetController,
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
                                     controller: areaController,
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
                                     controller: landmarkController,
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
                                     controller: cityController,
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
                                    controller: stateController,
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
                                    inputFormatters: [
                                      LengthLimitingTextInputFormatter(6),
                          ],
                                    controller: pincodeController,
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
                                       if(streetController.text.isNotEmpty && 
                                           areaController.text.isNotEmpty &&
                                           landmarkController.text.isNotEmpty &&
                                           cityController.text.isNotEmpty &&
                                           stateController.text.isNotEmpty &&
                                           pincodeController.text.isNotEmpty 
                                             )
                                           {
                                            //homeController.home.value==1 ? "home" : homeController.home.value==2 ? "work" : homeController.home.value==3 ? "others" : "home",
                                         addAddressController.addAddressUser(
                                          type: homeController.home.value==1 ? "home" : homeController.home.value==2 ? "work" : homeController.home.value==3 ? "other" : "home",
                                          street: streetController.text,
                                          area: areaController.text,
                                          landmark: landmarkController.text,
                                          city: cityController.text,
                                          state: stateController.text,
                                          pincode: pincodeController.text,
                                          location: loctionController.text
                                        );
                                       }else{
                                         Get.snackbar("Please fill all the fields", "",
                                         snackPosition: SnackPosition.BOTTOM,
                                         colorText: Colors.white,
                                         backgroundColor: Colors.red);
                                       }
                                        // Navigator.push(
                                        //   context,
                                        //   MaterialPageRoute(
                                        //       builder: (context) =>
                                        //           const CartPaymentScreen()),
                                        // );
                                      },
                                      child: Container(
                                        height: 35,
                                        width: 130,
                                        child: Center(
                                          child: Text(
                                            "Order",
                                            textAlign: TextAlign.center,
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
                );
            }
          ),
    );
  }
}