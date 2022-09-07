import 'package:flutter/material.dart';   import 'package:woo_customer/ui/widget/bottomNavBar.dart';
import 'package:woo_customer/res/app_assets.dart';
import 'package:woo_customer/res/theme/theme.dart';

class OrderTrackingScreen4 extends StatefulWidget {
  const OrderTrackingScreen4({Key? key}) : super(key: key);

  @override
  State<OrderTrackingScreen4> createState() => _OrderTrackingScreen4State();
}

class _OrderTrackingScreen4State extends State<OrderTrackingScreen4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(bottomNavigationBar: CustomBottomNavigationBar(),
      backgroundColor: AppTheme.backGroundColor,
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
                bottom: 80,
                child: Container(
                  margin: const EdgeInsets.all(20),
                  decoration: const BoxDecoration(
                      color: AppTheme.colorWhite,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: MediaQuery.of(context).size.height * 0.28,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "    Food Enroute",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 26),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(left: 20, right: 20),
                            width: 100,
                            child: Image.asset(
                              AppAssets.food1,
                            ),
                          ),
                          Column(
                            children: [
                              const Text("Food enroute"),
                              const SizedBox(
                                height: 20,
                              ),
                              const Text("Dispatch rider")
                            ],
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.message),
                            color: AppTheme.primaryColor,
                            iconSize: 42,
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.phone),
                            color: AppTheme.primaryColor,
                            iconSize: 42,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Divider(
                        height: 12,
                        thickness: 2,
                        color: Colors.grey,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "   Expected Delivery Time ",
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                          const Text(
                            "10:30 am   ",
                            style: TextStyle(
                              color: AppTheme.primaryColor,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
