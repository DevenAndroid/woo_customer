import 'package:flutter/material.dart';   import 'package:woo_customer/ui/widget/bottomNavBar.dart';
import 'package:woo_customer/res/app_assets.dart';
import 'package:status_change/status_change.dart';
import 'package:woo_customer/ui/widget/bottomNavBar.dart';
import '../../res/theme/theme.dart';
import '../widget/common_widget.dart';

class OrderTrackingScreen extends StatefulWidget {
  const OrderTrackingScreen({Key? key}) : super(key: key);

  @override
  State<OrderTrackingScreen> createState() => _OrderTrackingScreenState();
}

class _OrderTrackingScreenState extends State<OrderTrackingScreen> {
  int currentStep = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomNavigationBar(),
      backgroundColor: const Color(0xFFD2D2D2),
      appBar: commonAppBar("Order Details"),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            margin: const EdgeInsets.all(20),
            child: Column(
              children: [
                Container(
                    margin: const EdgeInsets.only(top: 30),
                    child: Image.asset(
                      AppAssets.onBoarding3,
                      height: 150,
                    )),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  "Your Order has been accepted, Once the food as they way you would be notified",
                  textAlign: TextAlign.center,
                ),
                Container(
                  height: 350,
                  child: Stepper(steps: [
                    Step(
                      title: new Text('Order Placed'),
                      content: const Text(''),
                      isActive: currentStep >= 0,
                      state: currentStep >= 0
                          ? StepState.complete
                          : StepState.disabled,
                    ),
                    Step(
                      title:
                          new Text('Confirmation of order from plated cousine'),
                      content: const Text(''),
                      isActive: currentStep >= 0,
                      state: currentStep >= 0
                          ? StepState.complete
                          : StepState.disabled,
                    ),
                    Step(
                      title: new Text('Food enrouted'),
                      content: Container(
                        alignment: Alignment.center,
                        margin:
                            const EdgeInsets.only(top: 30, left: 80, right: 80),
                        decoration: const BoxDecoration(
                            color: Color(0xffF07846),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: MaterialButton(
                          onPressed: () {},
                          child: const Text(
                            "Track Order",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        ),
                      ),
                      isActive: currentStep >= 0,
                      state: currentStep >= 0
                          ? StepState.complete
                          : StepState.disabled,
                    ),
                    Step(
                      title: new Text('To be delivered'),
                      content: const Text(''),
                      isActive: currentStep >= 0,
                      state: currentStep >= 0
                          ? StepState.complete
                          : StepState.disabled,
                    ),
                  ]),
                ),
                Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.only(top: 30, left: 80, right: 80),
                  decoration: const BoxDecoration(
                      color: Color(0xffF07846),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: MaterialButton(
                    onPressed: () {},
                    child: const Text(
                      "Go back to Home",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  cancel() {
    currentStep > 0 ? setState(() => currentStep -= 1) : null;
  }
}
