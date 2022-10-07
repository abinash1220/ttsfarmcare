import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ttsfarmcare/view/home_Screen/home_Screen.dart';

import '../../constants/app_colors.dart';

class PaymentSucessfully extends StatefulWidget {
  const PaymentSucessfully({super.key});

  @override
  State<PaymentSucessfully> createState() => _PaymentSucessfullyState();
}

class _PaymentSucessfullyState extends State<PaymentSucessfully> {
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
                SizedBox(width: 5,),
                Text(
                  "Succesfull",
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
            padding: const EdgeInsets.only(top: 250,left: 0),
            child: Center(
              child: Column(
                children: [
                  Image(image: AssetImage("assets/images/sucessfully.png")),
                  SizedBox(height: 40,),
                  Text("Your Order Succesfully Register!",
                  style: TextStyle(
                    fontSize: 21,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff727C8E)
                  ),
                  ),
                  SizedBox(height: 200,),
                  InkWell(
                      onTap: (){
                        Navigator.push(
                                   context,
                                   MaterialPageRoute(builder: (context) => const HomeScreen()),
                                 );
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20,right: 20),
                        child: Container(
                          height: 50,
                          width: 350,
                          child: Center(
                            child: Text("Done",
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
          ),
        ]),
    );
  }
}