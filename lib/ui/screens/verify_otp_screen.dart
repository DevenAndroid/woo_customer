import 'dart:async';

import 'package:flutter/material.dart';
import 'package:woo_customer/ui/widget/bottomNavBar.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:woo_customer/ui/widget/common_button.dart';

import '../../res/theme/theme.dart';
import '../../routers/my_router.dart';
import '../widget/common_widget.dart';

class VerifyOtpScreen extends StatefulWidget {
  const VerifyOtpScreen({Key? key}) : super(key: key);

  @override
  State<VerifyOtpScreen> createState() => _VerifyOtpScreenState();
}

class _VerifyOtpScreenState extends State<VerifyOtpScreen> {
  late Timer _timer;
  var resendText = 'Resend OTP';
  final _formKey = GlobalKey<FormState>();
  final otpController = TextEditingController();
  late StreamController<ErrorAnimationType> errorController;
  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  void startTimer() {
    int start = 30;
    const oneSec = Duration(seconds: 1);
    _timer = Timer.periodic(
      oneSec,
      (Timer timer) {
        if (start == 0) {
          setState(() {
            resendText = 'Resend OTP ';
            timer.cancel();
          });
        } else {
          setState(() {
            resendText = 'Resend OTP $start';
            start--;
          });
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Stack(
            children: [
              Positioned(
                top: 0,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  color: AppTheme.primaryColor,
                  height: MediaQuery.of(context).size.height * 0.3,
                  alignment: Alignment.center,
                  // child: Image.asset(
                  //   AppAssets.logoWelcome,
                  //   width: MediaQuery.of(context).size.width * 0.6,
                  // ),
                  child: const Text(
                    "LOGO",
                    style: TextStyle(fontSize: 40, color: Colors.white),
                  ),
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                padding: const EdgeInsets.all(20),
                alignment: Alignment.bottomCenter,
                height: MediaQuery.of(context).size.height * 0.7,
                margin: const EdgeInsets.only(top: 190, left: 10, right: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      "OTP",
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    const Divider(
                      indent: 150,
                      endIndent: 150,
                      height: 2,
                      thickness: 2,
                      color: AppTheme.primaryColor,
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    const Text(
                      "We have sent an OTP on +91 7414055310",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20, right: 20),
                      child: PinCodeTextField(
                        autoFocus: true,
                        appContext: context,
                        textStyle: const TextStyle(color: Colors.black),
                        controller: otpController,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly,
                        ],
                        cursorColor: Colors.black26,
                        pastedTextStyle: TextStyle(
                          color: Colors.green.shade600,
                          fontWeight: FontWeight.bold,
                        ),
                        animationType: AnimationType.fade,
                        // errorAnimationController: errorController,
                        validator: (v) {
                          if (v!.isEmpty) {
                            return "OTP code Required";
                          } else if (v.length != 4) {
                            return "Enter complete OTP code";
                          }
                          return null;
                        },
                        length: 4,
                        pinTheme: PinTheme(
                          shape: PinCodeFieldShape.box,
                          borderRadius: BorderRadius.circular(5),
                          fieldWidth: 40,
                          fieldHeight: 40,
                          selectedColor: Colors.black,
                          activeColor: AppTheme.primaryColor,
                          inactiveColor: AppTheme.primaryColor,
                          errorBorderColor: Colors.red,
                        ),
                        keyboardType: TextInputType.number,
                        onChanged: (v) {
                          setState(() {
                            // currentText = v;
                          });
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    CommonButton("Verify & Proceed", () {
                      if (_formKey.currentState!.validate()) {
                        Get.toNamed(MyRouter.chooseLocationScreen);
                        SuccessToast(context, 'Please check your Inbox',
                            'We have send a otp to your Phone number, verify otp to Login');
                      }
                    }),
                    const SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: resendText == 'Resend OTP'
                          ? () {
                              // resendVerifyEmailOtp(Get.arguments[0], context)
                              //     .then((value) {
                              //   showToast(value.message);
                              //   return null;
                              // });
                              startTimer();
                            }
                          : null,
                      child: Container(
                        padding: const EdgeInsets.only(
                            // top: AddSize.padding10 * .8,
                            // bottom: AddSize.padding10 * .8,
                            ),
                        child: Text(resendText,
                            style: TextStyle(
                                fontSize: 18,
                                color: AppTheme.primaryColor,
                                fontWeight: FontWeight.w600)),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
