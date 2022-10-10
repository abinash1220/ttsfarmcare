import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:ttsfarmcare/constants/app_colors.dart';

class FinishedMyOrders extends StatefulWidget {
  const FinishedMyOrders({super.key});

  @override
  State<FinishedMyOrders> createState() => _FinishedMyOrdersState();
}

class _FinishedMyOrdersState extends State<FinishedMyOrders> {
  bool isCheked = true;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: LayoutBuilder(
          builder: (BuildContext ctx, BoxConstraints constraints) {
        return Container(
          child: Column(children: [
            Container(
              height: constraints.maxHeight > 600
                  ? size.height * 0.2
                  : size.height * 0.3,
              child: Stack(
                children: [
                  Container(
                    width: double.infinity,
                    child: Image(
                      image: AssetImage("assets/images/Group 3361.png"),
                      fit: BoxFit.fill,
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 50, left: 10, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Finished Orders",
                              style: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        Image(
                            image: AssetImage("assets/images/Group 3466.png")),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
                //color: Colors.red,
                height: constraints.maxHeight > 600
                    ? size.height * 0.8
                    : size.height * 0.7,
                child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: ((context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10,bottom:  20),
                    child: Container(
                      height: 100,
                      width: 350,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child:
                                Image(image: AssetImage("assets/image/aa.png")),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            height: 100,
                            width: 1,
                            color: Color(0xff686868),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Checkbox(
                                      activeColor: Color(0xff517937),
                                      value: isCheked,
                                      onChanged: (value) {}),
                                  Container(
                                    width: size.width * 0.45,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Micro Nutrition",
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Color(0xff1C1C1E)),
                                        ),
                                        Text(
                                          "Rating",
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: Color(0xff515C6F)),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Image(
                                      image: AssetImage(
                                          "assets/image/Group 3369.png")),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "VALOROUS:",
                                      style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xff1C1C1E)),
                                    ),
                                    Text(
                                      "RS 256.98:",
                                      style: TextStyle(
                                          fontSize: 13,
                                          color: Color(0xff0D8446)),
                                    ),
                                    Container(
                                      width: size.width * 0.7,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "Qty : 01",
                                            style: TextStyle(
                                                fontSize: 13,
                                                color: Color(0xff1C1C1E)),
                                          ),
                                          Text(
                                            "Order Complete",
                                            style: TextStyle(
                                                fontSize: 13,
                                                color: Color(0xff0D8446)),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(color: Color.fromARGB(255, 194, 194, 194)),
                        color: Color.fromARGB(255, 247, 243, 243),
                      ),
                    ),
                  );
                }))),
          ]),
        );
      }),
    );
  }
}
