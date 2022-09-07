import 'package:flutter/material.dart';   import 'package:woo_customer/ui/widget/bottomNavBar.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../res/app_assets.dart';
import '../../res/theme/theme.dart';
import '../../routers/my_router.dart';
import '../widget/common_widget.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(bottomNavigationBar: CustomBottomNavigationBar(),
      appBar: commonAppBar("Logo"),
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
              "It's time to lunch. Have best Food From",
              style: TextStyle(fontSize: 18),
            ),
            Text(" Best Restraunt", style: TextStyle(fontSize: 18)),
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
