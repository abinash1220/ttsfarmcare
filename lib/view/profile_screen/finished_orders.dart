import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ttsfarmcare/controllers/oreder_history_api_controllers/complete_order_api_controller.dart';
import 'package:ttsfarmcare/view/profile_screen/finished_order_gridview.dart';

class FinishedOrders extends StatefulWidget {
  const FinishedOrders({super.key});

  @override
  State<FinishedOrders> createState() => _FinishedOrdersState();
}

class _FinishedOrdersState extends State<FinishedOrders> {

  bool isCheked = true;

  List image = ["assets/images/21.png","assets/images/21.png","assets/images/asset-3.png","assets/images/asset-3.png","assets/images/21.png","assets/images/21.png"];

  final completeOrderController = Get.find<CompleteOrderControllers>();
   
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
     WidgetsBinding.instance
        .addPostFrameCallback((_) => getCompleteOrder());
  }

  getCompleteOrder(){
    completeOrderController.getCompleteOrder();
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
        title: Text("Finished Orders",
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
          body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
              return Padding(
                             padding: const EdgeInsets.only(
                                 left: 15, right: 15, top: 20),
                             child: Container(
                               height:constraints.maxHeight>570 ? size.height * 0.73 : size.height* 0.71,
                        child: ListView(
                          shrinkWrap: true,
                          children: [
                          GetBuilder<CompleteOrderControllers>(
                          builder: (_) {
                            return CompleOrderGritview(completeorder:completeOrderController.completeorder);
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