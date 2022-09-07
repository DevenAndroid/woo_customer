import 'package:cherry_toast/cherry_toast.dart';
import 'package:cherry_toast/resources/arrays.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:woo_customer/ui/widget/bottomNavBar.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../widget/common_items.dart';
import '../widget/common_widgets.dart';
import '../../res/theme/theme.dart';
import 'bottomNavBar.dart';

Widget searchView(BuildContext context, onTap, searchController) {
  return SizedBox(
    height: 54,
    child: TextField(
      maxLines: 1,
      controller: searchController,
      style: const TextStyle(fontSize: 17),
      textAlignVertical: TextAlignVertical.center,
      textInputAction: TextInputAction.search,
      onSubmitted: (value) => onTap(),
      decoration: InputDecoration(
        filled: true,
        prefixIcon: Icon(
          Icons.search_rounded,
          color: Theme.of(context).iconTheme.color,
        ),
        suffixIcon: InkWell(
            onTap: onTap,
            child: Container(
              margin: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: AppTheme.primaryColor,
                  borderRadius: BorderRadius.circular(5)),
              child: const Icon(
                Icons.search,
                size: 18,
                color: Colors.white,
              ),
            )),
        border: const OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.all(Radius.circular(8))),
        fillColor: Colors.white,
        contentPadding: EdgeInsets.zero,
        hintText: 'Search',
      ),
    ),
  );
}

PreferredSize commonAppBar(
  String title,
) {
  return PreferredSize(
      preferredSize: Size.fromHeight(90.0),
      child: AppBar(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(20),
        )),
        // backgroundColor: title == 'Home' ? Colors.white : AppTheme.primaryColor,
        backgroundColor: AppTheme.primaryColor,
        leading: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: const Icon(Icons.arrow_back_ios)),
        title: Container(
          margin: EdgeInsets.only(top: 20),
          child: Text(
            title,
            style: TextStyle(fontSize: 26),
          ),
        ),
        centerTitle: true,
      ));
}

TextStyle textStyle(color, FontSize, FontWeight) {
  double FontSize;
  return TextStyle(fontSize: 22, color: color, fontWeight: FontWeight);
}

void SuccessToast(BuildContext context, title, description) {
  title;
  description;
  CherryToast.success(
    autoDismiss: true,
    animationType: AnimationType.fromTop,
    title: Text(
      title,
      style: TextStyle(color: Colors.green),
    ),
    description: Text(
      description,
      style: TextStyle(color: Colors.black),
    ),
  ).show(context);
}

void ErrorToast(BuildContext context, title, description) {
  description;
  title;
  CherryToast.error(
      autoDismiss: true,
      animationType: AnimationType.fromTop,
      title: Text(
        title,
        style: TextStyle(color: Colors.red),
      ),
      description: Text(
        description,
        style: TextStyle(color: Colors.black),
      )).show(context);
}

void WarningToast(BuildContext context, title, description) {
  title;
  description;
  CherryToast.warning(
      autoDismiss: true,
      animationType: AnimationType.fromTop,
      title: Text(
        title,
        style: TextStyle(color: Colors.red),
      ),
      description: Text(
        description,
        style: TextStyle(color: Colors.black),
      )).show(context);
}
