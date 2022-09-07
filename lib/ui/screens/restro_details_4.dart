import 'package:cached_network_image/cached_network_image.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:woo_customer/ui/widget/bottomNavBar.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:woo_customer/res/app_assets.dart';

import '../../res/theme/theme.dart';
import '../../routers/my_router.dart';
import '../widget/common_widget.dart';
import '../widget/common_items.dart';
import 'items/menu_items.dart';
import '../widget/common_widgets.dart';

class RestroDetailsScreen extends StatefulWidget {
  const RestroDetailsScreen({Key? key}) : super(key: key);

  @override
  State<RestroDetailsScreen> createState() => _RestroDetailsScreenState();
}

late double itemHeigt;

class _RestroDetailsScreenState extends State<RestroDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    final List _gridItems = List.generate(90, (i) => "Item $i");
    final screenSize = MediaQuery.of(context).size;
    final double itemHeight = screenSize.height / 2.8;
    final double itemWidth = screenSize.width / 2;
    return Scaffold(
      bottomNavigationBar: CustomBottomNavigationBar(),
      appBar: commonAppBar("Restraint Details"),
      body: Padding(
        padding: const EdgeInsets.only(
            top: 4.0, left: 10.0, right: 10.0, bottom: 12),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      padding: EdgeInsets.all(10),
                      // height: screenSize.height * 0.42,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(15)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            height: 200,
                            width: MediaQuery.of(context).size.width,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(AppAssets.restroThali1),
                                    fit: BoxFit.cover)),
                          ),
                          addHeight(10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                "Barbeque Nation",
                                style: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "* 5.0   ",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: AppTheme.primaryColor,
                                ),
                              ),
                            ],
                          ),
                          addHeight(10),
                          const Text(
                            "Fast Food, north Indian, Chinese",
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                          addHeight(10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const [
                              Icon(
                                Icons.watch_later_outlined,
                                color: AppTheme.primaryColor,
                              ),
                              Text(
                                "   Delivery Time",
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                              Spacer(),
                              Text(
                                "* 4:00 pm   ",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: AppTheme.primaryColor,
                                ),
                              ),
                            ],
                          ),
                          addHeight(10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const [
                              Icon(
                                Icons.location_on_outlined,
                                color: AppTheme.primaryColor,
                              ),
                              Text(
                                "   523, Tagore nagar jaipur, India",
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                              Spacer(),
                              Text(
                                "    ",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: AppTheme.primaryColor,
                                ),
                              ),
                            ],
                          ),
                          addHeight(10),
                        ],
                      )),
                ],
              ),
            ),
            SliverToBoxAdapter(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  addHeight(20),
                  const Text(
                    "Offer in Selected Restro",
                    style: TextStyle(
                        color: Colors.black,
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
                    height: screenSize.height * 0.20,
                    clipBehavior: Clip.antiAlias,
                    // margin: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: AppTheme.colorWhite,
                        borderRadius: BorderRadius.circular(20)),
                    child: Swiper(
                      autoplay: true,
                      outer: false,
                      autoplayDisableOnInteraction: true,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            itemBuilder: (context, index) {
                              return Row(
                                children: [
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                      height: 130,
                                      width: 150,
                                      child: Image.asset(
                                        AppAssets.food1,
                                        fit: BoxFit.cover,
                                      )),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      const Text(
                                        "Barbeque Nation",
                                        style: TextStyle(
                                          fontSize: 18,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
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
                                            "30% off ",
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
                                      const SizedBox(
                                        height: 20,
                                      )
                                    ],
                                  ),
                                ],
                              );
                            },
                          ),
                        );
                      },
                      itemCount: 121,
                      // pagination: const SwiperPagination(),
                      // control: const SwiperControl(size: 0), // remove arrows
                    ),
                  ),
                ],
              ),
            ),
            SliverToBoxAdapter(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  addHeight(20),
                  const Text(
                    "Drinks",
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
                    padding: EdgeInsets.all(10),
                    height: screenSize.height * 0.3,
                    clipBehavior: Clip.antiAlias,
                    // margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: AppTheme.colorWhite,
                        borderRadius: BorderRadius.circular(20)),
                    child: Swiper(
                      autoplay: false,
                      outer: false,
                      autoplayDisableOnInteraction: true,
                      itemBuilder: (BuildContext context, int index) {
                        return ListView.builder(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return menuItemsGridView();
                          },
                        );
                      },
                      itemCount: 121,
                      // pagination: const SwiperPagination(),
                      // control: const SwiperControl(size: 0), // remove arrows
                    ),
                  ),
                ],
              ),
            ),
            SliverToBoxAdapter(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  addHeight(20),
                  const Text(
                    "Sweets",
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
                    padding: EdgeInsets.all(10),
                    height: screenSize.height * 0.3,
                    clipBehavior: Clip.antiAlias,
                    // margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: AppTheme.colorWhite,
                        borderRadius: BorderRadius.circular(20)),
                    child: Swiper(
                      autoplay: false,
                      outer: false,
                      autoplayDisableOnInteraction: true,
                      itemBuilder: (BuildContext context, int index) {
                        return ListView.builder(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  color: AppTheme.backGroundColor,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20))),
                              margin: EdgeInsets.only(right: 10),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                      height: 130,
                                      width: 170,
                                      child: Image.asset(
                                        AppAssets.sweets_restrodetailsimg,
                                        fit: BoxFit.cover,
                                      )),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "Fresh Cakes",
                                        style: TextStyle(
                                          fontSize: 14,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 70,
                                      ),
                                      Container(
                                        height: 30,
                                        width: 20,
                                        child: Image(
                                            image: AssetImage(
                                                AppAssets.vegIconImg)),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: 30,
                                        width: 30,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10)),
                                            color: AppTheme.primaryColor),
                                        child: FittedBox(
                                          child: IconButton(
                                            onPressed: () {},
                                            icon: Icon(Icons.add),
                                            color: AppTheme.colorWhite,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "1",
                                        style: TextStyle(
                                            color: AppTheme.primaryColor),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Container(
                                        height: 30,
                                        width: 30,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10)),
                                            color: AppTheme.primaryColor),
                                        child: FittedBox(
                                          child: IconButton(
                                            onPressed: () {},
                                            icon: Icon(Icons.add),
                                            color: AppTheme.colorWhite,
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            );
                          },
                        );
                      },
                      itemCount: 121,
                      // pagination: const SwiperPagination(),
                      // control: const SwiperControl(size: 0), // remove arrows
                    ),
                  ),
                ],
              ),
            ),
            SliverToBoxAdapter(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  addHeight(20),
                  const Text(
                    "Main Food",
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
                    padding: EdgeInsets.all(10),
                    height: screenSize.height * 0.3,
                    clipBehavior: Clip.antiAlias,
                    // margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: AppTheme.colorWhite,
                        borderRadius: BorderRadius.circular(20)),
                    child: Swiper(
                      autoplay: false,
                      outer: false,
                      autoplayDisableOnInteraction: true,
                      itemBuilder: (BuildContext context, int index) {
                        return ListView.builder(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  color: AppTheme.backGroundColor,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20))),
                              margin: EdgeInsets.only(right: 10),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                      margin: EdgeInsets.only(right: 10),
                                      height: 130,
                                      width: 170,
                                      child: Image.asset(
                                        AppAssets.cake_restro_details,
                                        fit: BoxFit.cover,
                                      )),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "Fresh Drink",
                                        style: TextStyle(
                                          fontSize: 14,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 70,
                                      ),
                                      Container(
                                        height: 30,
                                        width: 20,
                                        child: Image(
                                            image: AssetImage(
                                                AppAssets.vegIconImg)),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: 30,
                                        width: 30,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10)),
                                            color: AppTheme.primaryColor),
                                        child: FittedBox(
                                          child: IconButton(
                                            onPressed: () {},
                                            icon: Icon(Icons.add),
                                            color: AppTheme.colorWhite,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "1",
                                        style: TextStyle(
                                            color: AppTheme.primaryColor),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Container(
                                        height: 30,
                                        width: 30,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10)),
                                            color: AppTheme.primaryColor),
                                        child: FittedBox(
                                          child: IconButton(
                                            onPressed: () {},
                                            icon: Icon(Icons.add),
                                            color: AppTheme.colorWhite,
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            );
                          },
                        );
                      },
                      itemCount: 121,
                      // pagination: const SwiperPagination(),
                      // control: const SwiperControl(size: 0), // remove arrows
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
