import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:woo_customer/ui/widget/bottomNavBar.dart';

import '../../res/theme/theme.dart';

class CommonButton extends StatelessWidget {
  String buttonText;
  VoidCallback function;
  // double buttonWidth;
  // double buttonHeight;
  CommonButton(this.buttonText, this.function, {Key? key})
      : super(key: key); // change this

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.w),
      child: Material(
        elevation: 5,
        borderRadius: BorderRadius.circular(14),
        color: AppTheme.primaryColor,
        child: MaterialButton(
          minWidth: 180.h,
          height: 50.h,
          onPressed: function, // add this here
          child: Text(buttonText,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 18)
                  .copyWith(color: Colors.white, fontWeight: FontWeight.w600)),
        ),
      ),
    );
  }
}

class transparentCommonButton extends StatelessWidget {
  String buttonText;
  VoidCallback function;
  // double buttonWidth;
  // double buttonHeight;
  transparentCommonButton(this.buttonText, this.function, {Key? key})
      : super(key: key); // change this

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 180,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(14)),
          border: Border.all(color: AppTheme.primaryColor, width: 1)),
      height: 52,
      child: MaterialButton(
        minWidth: 160,
        height: 52,
        onPressed: function, // add this here
        child: Text(buttonText,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 18).copyWith(
                color: AppTheme.primaryColor, fontWeight: FontWeight.w600)),
      ),
    );
  }
}
