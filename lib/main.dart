import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:woo_customer/ui/screens/favorite_screen.dart';
import 'package:woo_customer/ui/screens/notification_screen.dart';
import 'package:woo_customer/ui/widget/bottomNavBar.dart';
import 'package:woo_customer/ui/widget/bottomNavBar.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:woo_customer/res/theme/theme.dart';
import 'package:woo_customer/routers/my_router.dart';
import 'package:woo_customer/splash_screen.dart';
import 'package:woo_customer/ui/screens/cart2_4_screen.dart';
import 'package:woo_customer/ui/screens/cart_screen2.dart';
import 'package:woo_customer/ui/screens/choose_location.dart';
import 'package:woo_customer/ui/screens/food_details_screen.dart';
import 'package:woo_customer/ui/screens/home_screen_5.dart';
import 'package:woo_customer/ui/screens/login_screen.dart';
import 'package:woo_customer/ui/screens/menu_2_screen.dart';
import 'package:woo_customer/ui/screens/offer_details3_screen.dart';
import 'package:woo_customer/ui/screens/onboarding_screen.dart';
import 'package:woo_customer/ui/screens/order_tracking_2.dart';
import 'package:woo_customer/ui/screens/order_tracking_4.dart';
import 'package:woo_customer/ui/screens/order_tracking_screen.dart';
import 'package:woo_customer/ui/screens/payment_details1_screen.dart';
import 'package:woo_customer/ui/screens/pickup_order.dart';
import 'package:woo_customer/ui/screens/restro_details_4.dart';
import 'package:woo_customer/ui/screens/search_screen.dart';
import 'package:woo_customer/ui/screens/setting_screen.dart';
import 'package:woo_customer/ui/screens/verify_otp_screen.dart';
import 'package:woo_customer/ui/widget/sidebar_test.dart';

import 'ui/screens/change_location.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    if (defaultTargetPlatform == TargetPlatform.android) {
      AndroidGoogleMapsFlutter.useAndroidViewSurface = true;
    }
    return ScreenUtilInit(
      builder: (context, child) => GetMaterialApp(
        theme: ThemeData(
            fontFamily: 'OpenSans',
            primaryColor: AppTheme.primaryColor,
            highlightColor: AppTheme.primaryColor,
            primarySwatch: AppTheme.primaryColorMaterial,
            cupertinoOverrideTheme: const CupertinoThemeData(
              primaryColor: AppTheme.primaryColor,
            ),
            // for others(Android, Fuchsia)
            textSelectionTheme: const TextSelectionThemeData(
                cursorColor: AppTheme.primaryColor,
                selectionColor: AppTheme.primaryColor),
            scrollbarTheme: const ScrollbarThemeData().copyWith(
              thumbColor: MaterialStateProperty.all(AppTheme.primaryColor),
            ),
            colorScheme: ColorScheme.fromSwatch()
                .copyWith(secondary: AppTheme.primaryColor)
                .copyWith(secondary: AppTheme.primaryColor)),
        debugShowCheckedModeBanner: false,
        initialRoute: "/splash",
        getPages: MyRouter.route,
        // home: NotificationScreen()
        //
      ),
      designSize: const Size(375, 812),
    );
  }
}
