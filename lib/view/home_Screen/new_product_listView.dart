import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ttsfarmcare/controllers/all_product_api_controllers/new_product_api_controller.dart';
import 'package:ttsfarmcare/models/get_all_products_model.dart';

import '../../models/all_product_model.dart';
import '../../models/new_product_model.dart';
import '../about_product/about_product.dart';

class NewProductListview extends StatefulWidget {
  List<Products> productData ;
  NewProductListview({super.key,required this.productData});

  @override
  State<NewProductListview> createState() => _NewProductListviewState();
}

class _NewProductListviewState extends State<NewProductListview> {


final newProductList = Get.find<NewProductController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 95,
      alignment: Alignment.centerLeft,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
            itemCount: widget.productData.length,
            itemBuilder: ((context, index) {
          return Padding(
            padding: const EdgeInsets.only(left: 10,right: 0),
            child: InkWell(
              onTap: (){
                Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                        builder: (context) => AboutProduct(
                                        image: widget.productData[index].image1,
                                        productData:widget.productData[index], product_id: 1,
                                 // name: "Micro Nutrition Valorous",
                                )),
                    );
              },
              child: Container(
                                    height: 95,
                                    width: 85,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          height: 60,
                                          child: Image(
                                            
                                              image: NetworkImage(
                                                 widget.productData[index].image1)),
                                        ),
                                        Text(
                                          widget.productData[index].title,
                                          style: GoogleFonts.montserrat(
                                            fontSize: 11,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Color(0xff3B438C),
                                    ),
                                  ),
            ),
          );
        }
      ),
    ));
  }
}