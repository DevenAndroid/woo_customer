import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';   import 'package:woo_customer/ui/widget/bottomNavBar.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../controllers/SearchController.dart';
import '../../res/app_assets.dart';
import '../../res/theme/theme.dart';
import '../widget/common_items.dart';
import '../widget/common_widget.dart';
import '../widget/common_items.dart';
import 'items/menu_items.dart';

class Menu2Screen extends StatefulWidget {
  Menu2Screen({Key? key}) : super(key: key);
  final controller = Get.put(SearchController());

  @override
  State<Menu2Screen> createState() => _Menu2ScreenState();
}

class _Menu2ScreenState extends State<Menu2Screen> {
  @override
  Widget build(BuildContext context) {
    final List _gridItems = List.generate(90, (i) => "Item $i");
    final screenSize = MediaQuery.of(context).size;
    final double itemHeight = screenSize.height / 2.8;
    final double itemWidth = screenSize.width / 2;
    return Scaffold(bottomNavigationBar: CustomBottomNavigationBar(),
        body: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          children: [
            ListView.builder(
              itemCount: 7,
              scrollDirection: Axis.vertical,
              physics: const ScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return commonItemsRow();
              },
            ),
            GridView.builder(
              itemCount: 12,
              shrinkWrap: true,
              physics: ScrollPhysics(),
              scrollDirection: Axis.vertical,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 4.0,
                  childAspectRatio: 1.0 / 1.6,
                  mainAxisSpacing: 4.0),
              itemBuilder: (BuildContext context, int index) {
                return menuItemsGridViewWithAddtoCart();
              },
            )
          ],
        ),
      ),
    ));
  }
}
