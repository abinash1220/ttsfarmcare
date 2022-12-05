import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:ttsfarmcare/controllers/about_product_controller.dart';
import 'package:ttsfarmcare/controllers/add_address_api_controllers/add_address_api_controller.dart';
import 'package:ttsfarmcare/controllers/add_address_api_controllers/get_address_api_controller.dart';
import 'package:ttsfarmcare/controllers/add_to_cart_api_controllers/add_to_cart_api_controller.dart';
import 'package:ttsfarmcare/controllers/add_to_cart_api_controllers/get_cart_api_controller.dart';
import 'package:ttsfarmcare/controllers/all_product_api_controllers/search_product_api_controller.dart';
import 'package:ttsfarmcare/controllers/change_password_api_controllers/forgot_pwd_change_api_controller.dart';
import 'package:ttsfarmcare/controllers/change_password_api_controllers/reset_password_api_controller.dart';
import 'package:ttsfarmcare/controllers/create_order_api_controllers/create_order_api_controller.dart';
import 'package:ttsfarmcare/controllers/customer_support_api_controllers/customer_support_api_%20controller.dart';
import 'package:ttsfarmcare/controllers/edit_profile_api_controllers/edit_profile_api_controller.dart';
import 'package:ttsfarmcare/controllers/home_Controllers.dart';
import 'package:ttsfarmcare/controllers/login_api_controllers/login_controller.dart';
import 'package:ttsfarmcare/controllers/oreder_history_api_controllers/add_quantity_api_controller.dart';
import 'package:ttsfarmcare/controllers/oreder_history_api_controllers/complete_order_api_controller.dart';
import 'package:ttsfarmcare/controllers/oreder_history_api_controllers/order_history_api_controllers.dart';
import 'package:ttsfarmcare/controllers/oreder_history_api_controllers/product_rating_api_controller.dart';
import 'package:ttsfarmcare/controllers/profile_controller.dart';
import 'package:ttsfarmcare/controllers/profile_user_details_api_controllers/profile_user_controller.dart';
import 'package:ttsfarmcare/controllers/register_controller.dart';
import 'package:ttsfarmcare/controllers/sent_otp_api_controllers/forgot_password_otp_api_controller.dart';
import 'package:ttsfarmcare/controllers/verify_otp_api_controllers/forgot_otp_verify_api_controller.dart';
import 'package:ttsfarmcare/services/sent_otp_api_services/sent_otp_api_service.dart';
import 'package:ttsfarmcare/controllers/verify_otp_api_controllers/verify_otp_api_controller.dart';
import 'package:ttsfarmcare/view/splash_view/splash_screen.dart';
import 'package:device_preview/device_preview.dart';
import 'controllers/all_product_api_controllers/all_product_api_controller.dart';
import 'controllers/notification_api_controllers/notification_api_controller.dart';
import 'controllers/sent_otp_api_controllers/sent_otp_api_controller.dart';
import 'controllers/sign_up_controllers.dart';
import 'controllers/view_cart_controller.dart';

Future main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();


  AwesomeNotifications().initialize(
  // set the icon to null if you want to use the default app icon
  null,
  [
    NotificationChannel(
        channelGroupKey: 'basic_channel_group',
        channelKey: 'basic_channel',
        channelName: 'Basic notifications',
        channelDescription: 'Notification channel for basic tests',
        defaultColor: Color(0xFF9D50DD),
        importance:NotificationImportance.High,
        playSound: true,
        ledColor: Colors.white)
  ],
  // Channel groups are only visual and are not required
  channelGroups: [
    NotificationChannelGroup(
        channelGroupKey: 'basic_channel_group',
        channelGroupName: 'Basic group')
  ],
  debug: true
);

AwesomeNotifications().isNotificationAllowed().then((isAllowed) {
  if (!isAllowed) {
    // This is just a basic example. For real apps, you must show some
    // friendly dialog box before call the request method.
    // This is very important to not harm the user experience
    AwesomeNotifications().requestPermissionToSendNotifications();
  }
});
  
  firebaseNotification();

  FirebaseMessaging.onMessage.listen((RemoteMessage message) {
  print('Got a message whilst in the foreground!');
  print('Message data: ${message.data}');

  if (message.notification != null) {
    print('Message also contained a notification: ${message.notification}');

     AwesomeNotifications().createNotification(
                  content: NotificationContent(
                  id: 10,
                  channelKey: 'basic_channel',
                  title: message.notification!.title,
                  body: message.notification!.body,
                  actionType: ActionType.Default
               ),
              );
  }
});

  Get.put(SignUpControllers());
  Get.put(HomeControllers());
  Get.put(ViewCartController());
  Get.put(AboutProductController());
  Get.put(ProfileController());
  Get.put(RegisterController());
  Get.put(LoginController());
  Get.put(SentOtpController());
  Get.put(VerifyOtpController());
  Get.put(AllProductController());
  Get.put(AddAddressController());
  Get.put(GetAddressControllers());
  Get.put(ForgotOtpController());
  Get.put(ForgotOtpVerifyController());
  Get.put(ForgotPwdchangeApiController());
  Get.put(GetProfileControllers());
  Get.put(EditProfileController());
  Get.put(ResetPasswordApiController());
  Get.put(CustomerSupportApiController());
  Get.put(OrderHistoryControllers());
  Get.put(RatingController());
  Get.put(CompleteOrderControllers());
  Get.put(CreateOrderController());
  Get.put(NotificationControllers());
  Get.put(AddToCartController());
  Get.put(GetCartControllers());
  Get.put(SearchProductController());
  Get.put(AddQuantityController());
  runApp(MyApp());
}

firebaseNotification()async{
  FirebaseMessaging messaging = FirebaseMessaging.instance;

NotificationSettings settings = await messaging.requestPermission(
  alert: true,
  announcement: false,
  badge: true,
  carPlay: false,
  criticalAlert: false,
  provisional: false,
  sound: true,
);

print('User granted permission: ${settings.authorizationStatus}');
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(392, 803),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
          useInheritedMediaQuery: true,
          //  locale: DevicePreview.locale(context),
          //  builder: DevicePreview.appBuilder,
          title: 'TTS Farm Care',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: SplashScreen(),
        );
      },
    );
  }
}
