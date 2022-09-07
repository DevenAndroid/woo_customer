import 'package:flutter/material.dart';   import 'package:woo_customer/ui/widget/bottomNavBar.dart';
import 'package:flutter/material.dart';   import 'package:woo_customer/ui/widget/bottomNavBar.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../res/app_assets.dart';
import '../../res/theme/theme.dart';
import '../../routers/my_router.dart';
import '../widget/common_widget.dart';

class OrderTrackingScreen2 extends StatefulWidget {
  const OrderTrackingScreen2({Key? key}) : super(key: key);

  @override
  State<OrderTrackingScreen2> createState() => _OrderTrackingScreen2State();
}

class _OrderTrackingScreen2State extends State<OrderTrackingScreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(bottomNavigationBar: CustomBottomNavigationBar(),
      appBar: commonAppBar("Order Complete"),
      body: SafeArea(
        child: Column(
          children: [
            Container(
                alignment: Alignment.topCenter,
                height: 300,
                margin: const EdgeInsets.only(top: 30),
                child: Image.asset(
                  AppAssets.orderCompleteImg,
                )),
            const Text(
              "Thank you for your Order",
              style: TextStyle(fontSize: 22, color: AppTheme.primaryColor),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(" Estimated Delivery",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(
              height: 20,
            ),
            const Text("Your order will be make within 25 min",
                style: TextStyle(
                  fontSize: 18,
                )),
            const SizedBox(
              height: 20,
            ),
            Container(
              decoration: const BoxDecoration(
                  color: Color(0xffF07846),
                  borderRadius: BorderRadius.all(Radius.circular(15))),
              child: MaterialButton(
                onPressed: () {
                  Get.toNamed(MyRouter.verifyOTPScreen);
                },
                child: const Text(
                  "  Track My Order   ",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(width: 2, color: AppTheme.primaryColor),
                  borderRadius: BorderRadius.all(Radius.circular(15))),
              child: MaterialButton(
                onPressed: () {
                  Get.toNamed(MyRouter.verifyOTPScreen);
                },
                child: const Text(
                  "    Order Details   ",
                  style: TextStyle(color: AppTheme.primaryColor, fontSize: 18),
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            RichText(
              text: const TextSpan(
                text: 'Want To Cancel This Order?',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
                children: <TextSpan>[
                  TextSpan(
                      text: ' Click here',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: AppTheme.primaryColor)),
                ],
              ),
            ),
            const SizedBox(
              height: 70,
            ),
          ],
        ),
      ),
    );
  }
}
