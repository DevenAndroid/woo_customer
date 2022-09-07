import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:woo_customer/ui/widget/bottomNavBar.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../widget/common_widgets.dart';
import '../../controllers/SearchController.dart';
import '../../res/app_assets.dart';
import '../../res/theme/theme.dart';
import '../widget/common_items.dart';
import '../widget/common_widget.dart';
import '../widget/common_items.dart';

Container commonItemsRow() {
  return Container(
    padding: const EdgeInsets.all(5),
    decoration: const BoxDecoration(
        color: AppTheme.continerBackgroundColor,
        borderRadius: BorderRadius.all(Radius.circular(20))),
    margin: const EdgeInsets.only(top: 15),
    child: FittedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            AppAssets.food1,
            height: 150,
            width: 150,
            fit: BoxFit.cover,
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Text(
                "Cheese Pizza",
                style: TextStyle(fontSize: 18, color: AppTheme.primaryColor),
              ),
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
                height: 30,
              ),
              addRemoveBtn()
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 30,
                width: 20,
                child: const Image(image: AssetImage(AppAssets.vegIconImg)),
              ),
              addHeight(60),
              const Text(
                "\$88.00",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ],
          )
        ],
      ),
    ),
  );
}

Container SearchScreenItemsListView() {
  return Container(
    padding: const EdgeInsets.all(5),
    decoration: const BoxDecoration(
        color: AppTheme.continerBackgroundColor,
        borderRadius: BorderRadius.all(Radius.circular(20))),
    margin: const EdgeInsets.only(top: 15),
    child: FittedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            AppAssets.food1,
            height: 150,
            width: 150,
            fit: BoxFit.cover,
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Text(
                "Barbeque Nation",
                style: TextStyle(fontSize: 18, color: AppTheme.primaryColor),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Cheese Vegitables",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "\$88.00",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              addRemoveBtn()
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 30,
                width: 20,
                child: const Image(image: AssetImage(AppAssets.vegIconImg)),
              ),
              addHeight(60),
            ],
          )
        ],
      ),
    ),
  );
}

Stack commonCartRowWithDeleteOption() {
  return Stack(
    children: [
      Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.05),
                offset: Offset(0, 0),
                blurRadius: 6,
              ),
            ],
            color: AppTheme.continerBackgroundColor,
            borderRadius: BorderRadius.all(Radius.circular(20))),
        margin: const EdgeInsets.only(top: 15),
        child: FittedBox(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                AppAssets.food1,
                height: 150,
                width: 150,
                fit: BoxFit.cover,
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text(
                    "Cheese Pizza",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Barbeque Nation",
                    style: TextStyle(fontSize: 18, color: Colors.grey),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "\$88.00",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "523 tausa road sikar and  ",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  addRemoveBtn()
                ],
              ),
              addHeight(60),
            ],
          ),
        ),
      ),
      Positioned(
        right: 0,
        top: 14,
        child: Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
                color: Colors.red,
                borderRadius:
                    BorderRadius.only(bottomLeft: (Radius.circular(20)))),
            alignment: Alignment.center,
            child: Icon(
              Icons.delete,
              color: Colors.white,
            )),
      )
    ],
  );
}

Stack NotificationItems() {
  return Stack(
    children: [
      Container(
        height: 123.h,
        width: 335.w,
        padding: const EdgeInsets.all(7),
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.05),
                offset: Offset(0, 0),
                blurRadius: 6,
              ),
            ],
            color: AppTheme.continerBackgroundColor,
            borderRadius: BorderRadius.all(Radius.circular(20))),
        margin: const EdgeInsets.only(top: 15),
        child: FittedBox(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                AppAssets.food1,
                height: 150,
                width: 150,
                fit: BoxFit.cover,
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text(
                    "Cheese Pizza",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Icon(Icons.watch_later_outlined),
                      addWidth(10),
                      Text(
                        "32 min",
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 40,
                    child: Expanded(
                      child: Text(
                        "BarbNati NationBarbeque Nation",
                        style: TextStyle(fontSize: 18, color: Colors.grey),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
              addHeight(60),
            ],
          ),
        ),
      ),
      Positioned(
        right: 8.h,
        top: 21.h,
        child: Container(
            height: 30,
            width: 30,
            decoration: const BoxDecoration(
                color: Colors.red,
                borderRadius:
                    BorderRadius.only(bottomLeft: (Radius.circular(8)))),
            alignment: Alignment.center,
            child: const Icon(
              Icons.delete,
              color: Colors.white,
            )),
      )
    ],
  );
}

Container commonItemsPaymentDetail() {
  return Container(
    padding: const EdgeInsets.all(10),
    decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            offset: const Offset(0, 0),
            blurRadius: 6,
          ),
        ],
        color: AppTheme.continerBackgroundColor,
        borderRadius: const BorderRadius.all(Radius.circular(20))),
    margin: const EdgeInsets.only(top: 15),
    child: FittedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            AppAssets.food1,
            height: 130,
            width: 130,
            fit: BoxFit.cover,
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Hungry House",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Masala Pasta",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    "\$88.88",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                  ),
                  addWidth(10),
                  Text(
                    "\$43.88",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              addRemoveBtn()
            ],
          ),
          SizedBox(
            width: 50,
          )
        ],
      ),
    ),
  );
}
