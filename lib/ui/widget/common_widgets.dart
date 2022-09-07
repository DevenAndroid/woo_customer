import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:woo_customer/ui/widget/bottomNavBar.dart';
import 'package:flutter/material.dart';
import 'package:woo_customer/ui/widget/bottomNavBar.dart';
import 'package:flutter/material.dart';
import 'package:woo_customer/ui/widget/bottomNavBar.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../res/theme/theme.dart';
import '../../routers/my_router.dart';

SizedBox addHeight(double size) => SizedBox(height: size.h);
SizedBox addWidth(double size) => SizedBox(width: size.w);

Row addRemoveBtn() {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Container(
        height: 30,
        width: 30,
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(8)),
            color: AppTheme.primaryColor),
        child: FittedBox(
          child: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.remove),
            color: AppTheme.colorWhite,
          ),
        ),
      ),
      const SizedBox(
        width: 10,
      ),
      const Text(
        "1",
        style: TextStyle(color: AppTheme.primaryColor),
      ),
      const SizedBox(
        width: 10,
      ),
      Container(
        height: 30,
        width: 30,
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(8)),
            color: AppTheme.primaryColor),
        child: FittedBox(
          child: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add),
            color: AppTheme.colorWhite,
          ),
        ),
      ),
    ],
  );
}

DividerDecoration({height, thickness, indent, endIndent, color}) {
  return Divider(
    height: height,
    thickness: thickness,
    indent: indent,
    endIndent: endIndent,
    color: AppTheme.primaryColor,
  );
}
