import 'package:flutter/material.dart';
import 'package:woo_customer/ui/widget/bottomNavBar.dart';
import 'package:woo_customer/ui/widget/bottomNavBar.dart';
import 'package:get/get.dart';
import 'package:woo_customer/res/app_assets.dart';
import 'package:woo_customer/routers/my_router.dart';

import '../../res/theme/theme.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({Key? key}) : super(key: key);

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
        clipBehavior: Clip.antiAlias,
        child: Container(
          decoration: const BoxDecoration(
              color: AppTheme.primaryColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              )),
          padding: EdgeInsets.all(30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              GestureDetector(
                onTap: () => Get.toNamed(MyRouter.homeScreen),
                child: Image.asset(
                  AppAssets.homeIcon,
                  color: AppTheme.colorWhite,
                  height: 30,
                  width: 30,
                ),
              ),
              GestureDetector(
                onTap: () => Get.toNamed(MyRouter.searchScreen),
                child: Image.asset(
                  AppAssets.searchIcon,
                  height: 30,
                  width: 30,
                  color: Colors.white30,
                ),
              ),
              GestureDetector(
                onTap: () => Get.toNamed(MyRouter.cartScreen2),
                child: Image.asset(
                  AppAssets.cartIcon,
                  height: 30,
                  width: 30,
                  color: AppTheme.colorWhite,
                ),
              ),
              GestureDetector(
                onTap: () => Get.toNamed(MyRouter.settingsScreen),
                child: Image.asset(
                  AppAssets.profileIcon,
                  height: 30,
                  width: 30,
                  color: AppTheme.colorWhite,
                ),
              )
            ],
          ),
        ));
  }
}
