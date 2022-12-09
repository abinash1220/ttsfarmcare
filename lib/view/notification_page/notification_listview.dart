import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:timeago/timeago.dart' as timeago;
import '../../controllers/profile_user_details_api_controllers/profile_user_controller.dart';
import '../../models/notification_model.dart';

class NotificationListView extends StatefulWidget {
  List<NotificationData> notify;
  NotificationListView({super.key, required this.notify});

  @override
  State<NotificationListView> createState() => _NotificationListViewState();
}

class _NotificationListViewState extends State<NotificationListView> {
  final getProfileuser = Get.find<GetProfileControllers>();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      child: ListView.builder(
        itemCount: widget.notify.length,
        itemBuilder: ((context, index) {
          return Column(
            children: [
              SizedBox(
                height: 5,
              ),
              Slidable(
                  child: Container(
                    height: 90,
                    width: size.width,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              //width: size.width*0.76,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        getProfileuser.profileDetails.name,
                                        style: GoogleFonts.montserrat(
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    timeago
                                        .format(widget.notify[index].createdAt),
                                    style: GoogleFonts.montserrat(
                                        fontSize: 10,
                                        //fontWeight: FontWeight.normal,
                                        color: Color(0xffB3B3B3)),
                                  ),
                                ],
                              ),
                            ),
                            Text(
                              widget.notify[index].message,
                              //  "New Products Purchase Complete\nThankyou For Orders....",
                              style: GoogleFonts.montserrat(
                                  fontSize: 11,
                                  fontWeight: FontWeight.normal,
                                  color: Color(0xff000000)),
                            ),
                            Text(
                              widget.notify[index].updatedAt.toString(),
                              style: GoogleFonts.montserrat(
                                  fontSize: 11,
                                  //fontWeight: FontWeight.normal,
                                  color: Color(0xffB3B3B3)),
                            ),
                          ],
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                            color: Color.fromARGB(255, 231, 230, 230))),
                  ),
                  endActionPane: ActionPane(
                    extentRatio: 0.15,
                    motion: const ScrollMotion(),
                    children: [
                      SlidableAction(
                        onPressed: (val) {},
                        backgroundColor: Color(0xFFFE4A49),
                        foregroundColor: Colors.white,
                        icon: CupertinoIcons.delete,
                      ),
                    ],
                  )),
            ],
          );
        }),
      ),
    );
  }
}
