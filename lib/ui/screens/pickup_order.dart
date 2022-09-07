import 'package:flutter/material.dart';
import 'package:woo_customer/ui/widget/bottomNavBar.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:woo_customer/ui/widget/common_widget.dart';

import '../../res/app_assets.dart';
import '../../res/theme/theme.dart';
import '../../routers/my_router.dart';

class PickUpOrderScreen2 extends StatefulWidget {
  const PickUpOrderScreen2({Key? key}) : super(key: key);

  @override
  State<PickUpOrderScreen2> createState() => _PickUpOrderScreen2State();
}

class _PickUpOrderScreen2State extends State<PickUpOrderScreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomNavigationBar(),
      appBar: commonAppBar("Pickup Order"),
      body: SafeArea(
        child: Column(
          children: [
            Container(
                alignment: Alignment.topCenter,
                height: 350,
                margin: const EdgeInsets.only(top: 30),
                child: Image.asset(
                  AppAssets.onBoarding3,
                )),
            Text(
              "Thank you for your Order",
              style: TextStyle(fontSize: 22, color: AppTheme.primaryColor),
            ),
            SizedBox(
              height: 30,
            ),
            Text(" Estimated Delivery",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SizedBox(
              height: 20,
            ),
            Text("Your order will be make within 25 min",
                style: TextStyle(
                  fontSize: 18,
                )),
            SizedBox(
              height: 20,
            ),
            RichText(
              text: TextSpan(
                text: 'Want To Cancel This Order?',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
                children: const <TextSpan>[
                  TextSpan(
                      text: ' Click here',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: AppTheme.primaryColor)),
                ],
              ),
            ),
            SizedBox(
              height: 70,
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
                  "   Browse Menu   ",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
