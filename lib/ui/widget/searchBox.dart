import 'package:flutter/material.dart';
import 'package:woo_customer/ui/widget/bottomNavBar.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:woo_customer/res/app_assets.dart';
import 'package:woo_customer/res/theme/theme.dart';
import '../widget/common_items.dart';
import 'package:woo_customer/ui/widget/common_widget.dart';

import '../widget/common_items.dart';

final searchController = TextEditingController();

TextField searchbox(icon) {
  icon;
  return TextField(
    maxLines: 1,
    controller: searchController,
    style: const TextStyle(fontSize: 17),
    textAlignVertical: TextAlignVertical.center,
    textInputAction: TextInputAction.search,
    onSubmitted: (value) => () {},
    decoration: InputDecoration(
      filled: true,
      prefixIcon: Icon(
        Icons.search_rounded,
        color: AppTheme.primaryColor,
      ),
      suffixIcon: InkWell(
          onTap: () {},
          child: Container(
              margin: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: AppTheme.primaryColor,
                  borderRadius: BorderRadius.circular(5)),
              child: Icon(icon))),
      border: const OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.all(Radius.circular(8))),
      fillColor: Colors.white,
      contentPadding: EdgeInsets.zero,
      hintText: 'Search for Dishes',
    ),
  );
}
