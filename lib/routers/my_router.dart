import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:woo_customer/models/food_model.dart';
import 'package:woo_customer/ui/screens/cart2_4_screen.dart';
import 'package:woo_customer/ui/screens/cart_screen2.dart';
import 'package:woo_customer/ui/screens/change_location.dart';
import 'package:woo_customer/ui/screens/choose_location.dart';
import 'package:woo_customer/ui/screens/favorite_screen.dart';
import 'package:woo_customer/ui/screens/food_details_screen.dart';
import 'package:woo_customer/ui/screens/home_screen_5.dart';
import 'package:woo_customer/ui/screens/login_screen.dart';
import 'package:woo_customer/ui/screens/menu_2_screen.dart';
import 'package:woo_customer/ui/screens/notification_screen.dart';
import 'package:woo_customer/ui/screens/offer_details3_screen.dart';
import 'package:woo_customer/ui/screens/onboarding_screen.dart';
import 'package:woo_customer/ui/screens/order_history.dart';
import 'package:woo_customer/ui/screens/order_tracking_2.dart';
import 'package:woo_customer/ui/screens/order_tracking_4.dart';
import 'package:woo_customer/ui/screens/order_tracking_screen.dart';
import 'package:woo_customer/ui/screens/payment_details1_screen.dart';
import 'package:woo_customer/ui/screens/pickup_order.dart';
import 'package:woo_customer/ui/screens/restro_details_4.dart';
import 'package:woo_customer/ui/screens/search_screen.dart';
import 'package:woo_customer/ui/screens/setting_screen.dart';
import 'package:woo_customer/ui/screens/sign_up_screen.dart';
import 'package:woo_customer/ui/screens/verify_otp_screen.dart';

import '../splash_screen.dart';
import '../ui/screens/profile_screen.dart';

class MyRouter {
  static var homeScreen = "/homeScreen";
  static var splashScreen = "/splashScreen";
  static var onBoardingProcessScreen = "/onBoardingProcessScreen";
  static var loginScreen = "/loginScreen";
  static var verifyOTPScreen = "/verifyOTPScreen";
  static var signUpScreen = "/signUpScreen";
  static var changeLocationScreen = "/changeLocationScreen";
  static var chooseLocationScreen = "/chooseLocationScreen";
  static var settingsScreen = "/settingsScreen";
  static var cartScreen2 = "/cartScreen2";
  static var cartScreen4 = "/cartScreen4";
  static var foodDetailsScreen = "/foodDetailsScreen";
  static var menuScreen2 = "/menuScreen2";
  static var offerDetailsScreen = "/offerDetailsScreen";
  static var orderTrackingScreen2 = "/orderTrackingScreen2";
  static var orderTrackingScreen4 = "/orderTrackingScreen4";
  static var orderTrackingScreen = "/orderTrackingScreen";
  static var paymentDetails = "/paymentDetails1";
  static var pickupOrderScreen2 = "/pickupOrderScreen2";
  static var restroDetailsScreen = "/restroDetailsScreen";
  static var searchScreen = "/searchScreen";
  static var profileScreen = "/profileScreen";
  static var favoriteDishes = "/favoriteDishes";
  static var notificationScreen = "/notificationScreen";
  static var orderHistoryScreen = "/orderHistoryScreen";
  // static var productDetailsScreen = "/productDetailsScreen";

  static var route = [
    GetPage(name: '/', page: () => SplashScreen()),
    GetPage(name: MyRouter.splashScreen, page: () => SplashScreen()),
    GetPage(name: MyRouter.homeScreen, page: () => HomeScreen()),
    GetPage(
        name: MyRouter.onBoardingProcessScreen,
        page: () => const OnBoardingProcessScreen()),
    GetPage(
        name: MyRouter.verifyOTPScreen, page: () => const VerifyOtpScreen()),
    GetPage(name: MyRouter.signUpScreen, page: () => const SignUpScreen()),
    GetPage(name: MyRouter.loginScreen, page: () => const LoginScreen()),
    GetPage(
        name: MyRouter.chooseLocationScreen,
        page: () => const ChooseLocationScreen()),
    GetPage(
        name: MyRouter.changeLocationScreen,
        page: () => const ChangeLocationScreen()),
    GetPage(name: MyRouter.settingsScreen, page: () => const SettingsScreen()),
    GetPage(name: MyRouter.cartScreen2, page: () => const Cart2Screen()),
    GetPage(name: MyRouter.cartScreen4, page: () => const CartScreen()),
    GetPage(name: MyRouter.foodDetailsScreen, page: () => FoodDetails()),
    GetPage(name: MyRouter.menuScreen2, page: () => Menu2Screen()),
    GetPage(
        name: MyRouter.offerDetailsScreen, page: () => OfferDetailsScreen()),
    GetPage(
        name: MyRouter.orderTrackingScreen2,
        page: () => OrderTrackingScreen2()),
    GetPage(
        name: MyRouter.orderTrackingScreen4,
        page: () => OrderTrackingScreen4()),
    GetPage(
        name: MyRouter.orderTrackingScreen, page: () => OrderTrackingScreen()),
    GetPage(name: MyRouter.paymentDetails, page: () => PaymentDetailsScreen()),
    GetPage(
        name: MyRouter.pickupOrderScreen2, page: () => PickUpOrderScreen2()),
    GetPage(
        name: MyRouter.restroDetailsScreen, page: () => RestroDetailsScreen()),
    GetPage(name: MyRouter.searchScreen, page: () => SearchScreen()),
    GetPage(name: MyRouter.profileScreen, page: () => ProfileScreen()),
    GetPage(name: MyRouter.favoriteDishes, page: () => FavouriteScreen()),
    GetPage(
        name: MyRouter.orderHistoryScreen, page: () => OrderHistoryScreen()),
    GetPage(
        name: MyRouter.notificationScreen, page: () => NotificationScreen()),
    // GetPage(name: MyRouter.productDetailsScreen, page: () => DetailScreen()),
  ];
}
