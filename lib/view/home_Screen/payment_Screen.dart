import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:ttsfarmcare/constants/app_colors.dart';
import 'package:ttsfarmcare/view/home_Screen/payment_sucessfully.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        child: Column(
          children: [
            Stack(
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
                        "Payment",
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
                  padding: const EdgeInsets.only(top: 140,left: 0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                            child: Image(image: AssetImage("assets/images/sucessfully.png")),
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
                       height: size.height*0.75,
                        child: ListView(
                          shrinkWrap: true,
                          children: [
                            Padding(
                                padding: const EdgeInsets.only(right: 10,left: 10),
                                child: Container(
                            height: 150,
                            width: 400,
                            child: Row(
                              children: [
                                Container(
                                  height: 130,
                                  width: 80,
                                  child: Image(image: AssetImage("assets/images/21.png"),
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
                              SizedBox(height: 15,),

                              //
                              Container(
                              height: 45,
                            width: size.width,
                            color: darkGreenColor,
                            child: Center(
                          child: Padding(
                        padding: const EdgeInsets.only(right: 230),
                        child: Text("Order Summary",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                        ),
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Total MRP",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                                fontSize: 18,
                              ),
                              ),
                              Text("Rs: 450.00",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                              ),
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Shipping charges",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                                fontSize: 18,
                              ),
                              ),
                              Text("Free",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                              ),
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Divider(
                  thickness: 1,
                 color: Color(0xff707070),
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Final payable",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                                fontSize: 18,
                              ),
                              ),
                              Text("450.00",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 21,
                              ),
                              ),
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                 Container(
                              height: 45,
                            width: size.width,
                            color: darkGreenColor,
                            child: Center(
                          child: Padding(
                        padding: const EdgeInsets.only(right: 230),
                        child: Text("Payment Using",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                        ),
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                       Padding(
                         padding: const EdgeInsets.only(left: 15),
                         child: Row(
                          children: [
                            Image(image: AssetImage("assets/image/credit-card.png")),
                            SizedBox(width: 10,),
                            Text("Debit / Credit cards",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontSize: 17,
                          ),
                          ),
                          ],
                         ),
                       ),
                       Divider(
                         thickness: 1,
                          color: Color(0xff707070),
                       ),
                       SizedBox(height: 10,),
                       Padding(
                         padding: const EdgeInsets.only(left: 15),
                         child: Row(
                          children: [
                            Image(image: AssetImage("assets/image/wallet.png")),
                            SizedBox(width: 10,),
                            Text("Wallet",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontSize: 17,
                          ),
                          ),
                          ],
                         ),
                       ),
                       Divider(
                         thickness: 1,
                          color: Color(0xff707070),
                       ),
                       SizedBox(height: 10,),
                       Padding(
                         padding: const EdgeInsets.only(left: 15),
                         child: Row(
                          children: [
                            Image(image: AssetImage("assets/image/cashless-payment.png")),
                            SizedBox(width: 10,),
                            Text("UPI / Payments",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontSize: 17,
                          ),
                          ),
                          ],
                         ),
                       ),
                       Divider(
                         thickness: 1,
                          color: Color(0xff707070),
                       ),
                       SizedBox(height: 10,),
                       Padding(
                         padding: const EdgeInsets.only(left: 15),
                         child: Row(
                          children: [
                            Image(image: AssetImage("assets/image/provider.png")),
                            SizedBox(width: 10,),
                            Text("Net Banking",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontSize: 17,
                          ),
                          ),
                          ],
                         ),
                       ),
                       Divider(
                         thickness: 1,
                          color: Color(0xff707070),
                       ),
                       SizedBox(height: 10,),
                       Padding(
                         padding: const EdgeInsets.only(left: 15),
                         child: Row(
                          children: [
                            Image(image: AssetImage("assets/image/cash-on-delivery.png")),
                            SizedBox(width: 10,),
                            Text("Cash on delivery",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontSize: 17,
                          ),
                          ),
                          ],
                         ),
                       ),
                       Divider(
                         thickness: 1,
                          color: Color(0xff707070),
                       ),
                       SizedBox(height: 15,),
                      InkWell(
                            onTap: (){
                              Navigator.push(
                                         context,
                                         MaterialPageRoute(builder: (context) => const PaymentSucessfully()),
                                       );
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(left: 20,right: 20),
                              child: Container(
                                height: 50,
                                width: 130,
                                child: Center(
                                  child: Text("Confirm Payments",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 21,
                                    fontWeight: FontWeight.w500
                                  ),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: darkGreenColor,
                                ),
                              ),
                            ),
                          ),
                
                          ],
                        ),
                      ),
                           
                    ],
                  ),
                ),
              ]),
          ],
        ),
      ),
    );
  }
}