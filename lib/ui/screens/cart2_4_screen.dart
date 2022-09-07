import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:material_dialogs/material_dialogs.dart';
import 'package:woo_customer/ui/widget/bottomNavBar.dart';
import 'package:woo_customer/res/app_assets.dart';
import 'package:woo_customer/res/theme/theme.dart';
import 'package:woo_customer/ui/widget/bottomNavBar.dart';
import '../../routers/my_router.dart';
import '../widget/common_widgets.dart';
import '../widget/common_items.dart';
import 'package:woo_customer/ui/widget/common_button.dart';
import 'package:woo_customer/ui/widget/common_widget.dart';

import '../widget/common_items.dart';

class Cart2Screen extends StatefulWidget {
  const Cart2Screen({Key? key}) : super(key: key);

  @override
  State<Cart2Screen> createState() => _Cart2ScreenState();
}

class _Cart2ScreenState extends State<Cart2Screen> {
  bool value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomNavigationBar(),
      appBar: commonAppBar("Cart"),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(children: [
              ListView.builder(
                itemCount: 2,
                scrollDirection: Axis.vertical,
                physics: const ScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return commonCartRowWithDeleteOption();
                },
              ),
              addHeight(20),
              Container(
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.05),
                        offset: const Offset(0, 0),
                        blurRadius: 6,
                      ),
                    ],
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    color: AppTheme.continerBackgroundColor),
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          height: 60,
                          width: 60,
                          decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              color: Color(0xffFFD5C4)),
                          child: Image.asset(
                            AppAssets.cart_bucketimg,
                            fit: BoxFit.cover,
                          ),
                        ),
                        addWidth(20),
                        const Text(
                          "Apply Coupon",
                          style: TextStyle(
                              color: AppTheme.primaryColor,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.arrow_forward_ios,
                              color: AppTheme.primaryColor,
                            ))
                      ],
                    ),
                    addHeight(10),
                    const Divider(
                      color: Colors.grey,
                      indent: 1,
                    ),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          height: 60,
                          width: 60,
                          child: Image.asset(
                            AppAssets.couponFlyingIconCart2,
                            fit: BoxFit.cover,
                          ),
                        ),
                        addWidth(20),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "Save \$20.00 on this order",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Become SUPER & keep saving more!",
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          "Get Super",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: AppTheme.primaryColor),
                        ),
                      ],
                    ),
                    addHeight(10),
                  ],
                ),
              ),
              addHeight(20),
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.05),
                        offset: const Offset(0, 0),
                        blurRadius: 6,
                      ),
                    ],
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    color: AppTheme.continerBackgroundColor),
                child: Column(
                  children: [
                    Row(
                      children: const [
                        Text(
                          "Total Item",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                        Text(
                          "1 Items",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    addHeight(10),
                    const Divider(
                      color: Colors.grey,
                      indent: 1,
                    ),
                    Row(
                      children: const [
                        Text(
                          "Payable Amount",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                        Text(
                          "\$180.00",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    addHeight(10),
                    const Divider(
                      color: Colors.grey,
                      indent: 1,
                    ),
                    Row(
                      children: const [
                        Text(
                          "Delivery Charge",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                        Text(
                          "free",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    addHeight(10),
                    const Divider(
                      color: Colors.grey,
                      indent: 1,
                    ),
                    Row(
                      children: const [
                        Text(
                          "Tax",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                        Text(
                          "\$0.00",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    addHeight(10),
                    const Divider(
                      thickness: 2,
                      color: Colors.black,
                      indent: 1,
                    ),
                    Row(
                      children: const [
                        Text(
                          "Total",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                        Text(
                          "\$180.00",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: AppTheme.primaryColor),
                        ),
                      ],
                    ),
                    addHeight(10),
                  ],
                ),
              ),
              addHeight(20),
              Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.05),
                        offset: const Offset(0, 0),
                        blurRadius: 6,
                      ),
                    ],
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    color: AppTheme.continerBackgroundColor),
                child: Column(
                  children: [
                    const Text(
                      "Check your Bill details and address details to avoid cancellations",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    addHeight(10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Note :",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        addWidth(5),
                        const Expanded(
                          child: Text(
                            "Check your Bill details and address details to avoid cancellationsCheck your Bill details and address details to avoid cancellationsCheck  ",
                            style: TextStyle(fontSize: 16, color: Colors.grey),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              addHeight(20),
              Container(
                padding: const EdgeInsets.all(15),
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: AppTheme.continerBackgroundColor),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Choose Your Location",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    addHeight(10),
                    Row(
                      children: [
                        Checkbox(
                          activeColor: AppTheme.primaryColor,
                          shape: const CircleBorder(),
                          side: const BorderSide(color: AppTheme.primaryColor),
                          value: this.value,
                          onChanged: (value) {
                            setState(() {
                              this.value = value!;
                            });
                          },
                        ),
                        const Text(
                          "Deliver At Given Location",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    addHeight(5),
                    Row(
                      children: [
                        Checkbox(
                          activeColor: AppTheme.primaryColor,
                          shape: const CircleBorder(),
                          side: const BorderSide(color: AppTheme.primaryColor),
                          value: this.value,
                          onChanged: (value) {
                            setState(() {
                              this.value = value!;
                            });
                          },
                        ),
                        const Text(
                          "Pick-up From store",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              addHeight(20),
              Container(
                padding: const EdgeInsets.all(15),
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: AppTheme.continerBackgroundColor),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    addHeight(10),
                    Row(
                      children: const [
                        Text(
                          "Delivery Location Details",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500),
                        ),
                        Spacer(),
                        Icon(
                          Icons.edit_calendar_rounded,
                          color: AppTheme.primaryColor,
                        )
                      ],
                    ),
                    addHeight(5),
                    const Divider(
                      color: AppTheme.primaryColor,
                      thickness: 1.4,
                    ),
                    addHeight(5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Icon(
                          Icons.location_on_outlined,
                          color: AppTheme.primaryColor,
                        ),
                        addWidth(10),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Broaddus Avenue",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            addHeight(10),
                            const Text(
                              "This Team Eoxysit.",
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
              addHeight(20),
              CommonButton(
                "Confirm Order",
                () {
                  Dialogs.materialDialog(
                      color: Colors.white,
                      title: 'Congratulations',
                      context: context,
                      actions: [
                        Column(
                          children: [
                            Image.asset(
                              AppAssets.orderAcceptedImg,
                            ),
                            CommonButton("Explore More", () {
                              Get.toNamed(MyRouter.homeScreen);
                            }),
                            Text("Your order will get deliverd in 5 minutes")
                          ],
                        ),
                      ]);
                },
              )
            ])),
      ),
    );
  }
}
