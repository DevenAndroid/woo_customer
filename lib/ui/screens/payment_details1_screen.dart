import 'package:flutter/material.dart';
import 'package:woo_customer/ui/widget/bottomNavBar.dart';
import 'package:woo_customer/res/app_assets.dart';
import 'package:woo_customer/res/theme/theme.dart';
import '../widget/common_items.dart';
import 'package:woo_customer/ui/widget/common_items.dart';
import 'package:woo_customer/ui/widget/common_widget.dart';
import '../widget/common_widgets.dart';
import '../widget/bottomNavBar.dart';

class PaymentDetailsScreen extends StatefulWidget {
  const PaymentDetailsScreen({Key? key}) : super(key: key);

  @override
  State<PaymentDetailsScreen> createState() => _PaymentDetailsScreenState();
}

class _PaymentDetailsScreenState extends State<PaymentDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomNavigationBar(),
      appBar: commonAppBar("Payment Details"),
      body: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListView.builder(
                      itemCount: 2,
                      scrollDirection: Axis.vertical,
                      physics: const ScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return commonItemsPaymentDetail();
                      },
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 20),
                      padding: const EdgeInsets.all(15),
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: AppTheme.continerBackgroundColor),
                      child: Column(
                        children: [
                          addHeight(10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  height: 50,
                                  width: 40,
                                  child: Image.asset(AppAssets.girlmgRound)),
                              addWidth(10),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "Broaddus Avenue",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  addHeight(10),
                                  const Text(
                                    "This is demo App by the Team Eoxysit.",
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
                    const Text(
                      "Select Payment Method",
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    addHeight(5),
                    const Divider(
                      indent: 1,
                      endIndent: 320,
                      thickness: 4,
                      color: AppTheme.primaryColor,
                    ),
                    addHeight(10),
                    Container(
                      height: 80,
                      child: GridView.builder(
                        physics: const ScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 1,
                                mainAxisExtent: 112,
                                childAspectRatio: 2 / 1,
                                mainAxisSpacing: 20),
                        itemBuilder: (context, index) {
                          return Container(
                            padding: EdgeInsets.all(5),
                            decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              color: AppTheme.primaryColor,
                            ),
                            child: Image.asset(AppAssets.card_payment),
                          );
                        },
                      ),
                    ),
                    addHeight(10),
                    const Text(
                      "Saves cards",
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    addHeight(4),
                    const Divider(
                      indent: 1,
                      endIndent: 320,
                      thickness: 4,
                      color: AppTheme.primaryColor,
                    ),
                    addHeight(10),
                  ]))),
    );
  }
}
