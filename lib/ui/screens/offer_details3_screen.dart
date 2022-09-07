import 'package:cached_network_image/cached_network_image.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:woo_customer/ui/widget/bottomNavBar.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:woo_customer/res/app_assets.dart';
import '../widget/common_widgets.dart';
import '../../res/theme/theme.dart';
import '../../routers/my_router.dart';
import '../widget/common_widget.dart';
import '../widget/common_items.dart';

class OfferDetailsScreen extends StatefulWidget {
  const OfferDetailsScreen({Key? key}) : super(key: key);

  @override
  State<OfferDetailsScreen> createState() => _OfferDetailsScreenState();
}

late double itemHeigt;

class _OfferDetailsScreenState extends State<OfferDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    final List _gridItems = List.generate(90, (i) => "Item $i");
    final screenSize = MediaQuery.of(context).size;
    final double itemHeight = screenSize.height / 2.8;
    final double itemWidth = screenSize.width / 2;
    return Scaffold(
      bottomNavigationBar: CustomBottomNavigationBar(),
      appBar: commonAppBar("Offer Details"),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 20.w),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 20),
                    height: 156.h,
                    width: 315.h,
                    clipBehavior: Clip.antiAlias,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(15)),
                    child: Swiper(
                      autoplay: true,
                      outer: false,
                      autoplayDisableOnInteraction: false,
                      itemBuilder: (BuildContext context, int index) {
                        return Image.asset(
                          AppAssets.food1,
                          fit: BoxFit.contain,
                        );
                      },
                      itemCount: 3,
                      pagination: const SwiperPagination(),
                      control: const SwiperControl(size: 0), // remove arrows
                    ),
                  ),
                  addHeight(20),
                  const Text(
                    "Today's offer",
                    style: TextStyle(
                        color: AppTheme.textColorDarkGreyDK,
                        fontSize: 22,
                        fontWeight: FontWeight.w600),
                  ),
                  addHeight(5),
                  const Divider(
                    indent: 1,
                    endIndent: 310,
                    height: 2,
                    thickness: 2,
                    color: AppTheme.primaryColor,
                  ),
                  addHeight(20),
                  Container(
                    height: 400,
                    child: ListView.builder(
                      itemCount: 13,
                      itemBuilder: (context, index) {
                        return Container(
                          child: Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                        AppAssets.burgerImg,
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                    color: AppTheme.continerBackgroundColor,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                                height: 116,
                                width: 122,
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  const Text(
                                    "Barbeque Nation",
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: const [
                                      Text(
                                        "\$90.99  ",
                                        style: TextStyle(
                                          fontSize: 16,
                                        ),
                                      ),
                                      Text(
                                        "\$63.00  ",
                                        style: TextStyle(
                                          fontSize: 16,
                                        ),
                                      ),
                                      Text(
                                        " 30% off",
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: AppTheme.primaryColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  const Text(
                                    "15 Days left",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    decoration: const BoxDecoration(
                                        color: Color(0xffF07846),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10))),
                                    child: MaterialButton(
                                      onPressed: () {
                                        Get.toNamed(MyRouter.verifyOTPScreen);
                                      },
                                      child: const Text(
                                        "     Apply     ",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 16),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  )
                                ],
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  addHeight(20),
                  const Text(
                    "Available Coupon",
                    style: TextStyle(
                        color: AppTheme.textColorDarkGreyDK,
                        fontSize: 22,
                        fontWeight: FontWeight.w600),
                  ),
                  addHeight(5),
                  const Divider(
                    indent: 1,
                    endIndent: 310,
                    height: 2,
                    thickness: 2,
                    color: AppTheme.primaryColor,
                  ),
                  Container(
                    height: 400,
                    child: ListView.builder(
                      itemCount: 13,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.only(top: 20),
                          decoration: const BoxDecoration(
                              color: AppTheme.continerBackgroundColor,
                              boxShadow: [
                                BoxShadow(color: Colors.red),
                                BoxShadow(color: Colors.blue),
                              ]),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                  height: 130,
                                  child: Image.asset(
                                    AppAssets.couponImg,
                                    fit: BoxFit.cover,
                                  )),
                              const SizedBox(
                                width: 40,
                              ),
                              // Container(
                              //   width: 10,
                              //   child: DottedLine(
                              //     direction: Axis.vertical,
                              //     lineThickness: 1.0,
                              //     dashLength: 4.0,
                              //     dashColor: Colors.black,
                              //     dashGradient: [Colors.red, Colors.blue],
                              //     dashRadius: 0.0,
                              //     dashGapLength: 4.0,
                              //     dashGapColor: Colors.black54,
                              //     dashGapGradient: [Colors.red, Colors.blue],
                              //     dashGapRadius: 0.0,
                              //   ),
                              // ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "Barbeque Nation",
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    "30% Discount",
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: AppTheme.primaryColor,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    "Validity : 21/12/2021",
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  )
                                ],
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
