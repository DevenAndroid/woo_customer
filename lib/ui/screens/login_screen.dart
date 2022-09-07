import 'package:cherry_toast/cherry_toast.dart';
import 'package:cherry_toast/resources/arrays.dart';
import 'package:flutter/material.dart';
import 'package:woo_customer/ui/widget/bottomNavBar.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:get/get.dart';
import 'package:woo_customer/res/app_assets.dart';
import 'package:woo_customer/res/theme/theme.dart';
import 'package:woo_customer/routers/my_router.dart';

import '../widget/common_widget.dart';
import '../widget/custom_text_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _numberController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

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
                  color: const Color(0xffF07846),
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
                // height: MediaQuery.of(context).size.height * 0.8,
                margin: const EdgeInsets.only(top: 200, left: 10, right: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      "Login",
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    const Divider(
                      indent: 140,
                      endIndent: 140,
                      height: 2,
                      thickness: 2,
                      color: AppTheme.primaryColor,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "Hello Again!",
                      style: TextStyle(
                        fontSize: 25,
                        color: Color(0xffF07846),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "Login Your Account and get Started",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Mobile Number",
                          style: TextStyle(
                              fontSize: 22,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        CustomTextField(
                          controller: _numberController,
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly
                          ],
                          prefixChildIcon: const Icon(
                            Icons.phone,
                            color: AppTheme.primaryColor,
                          ),
                          hintText: "Enter your number",
                          keyboardType: TextInputType.number,
                          validator: MultiValidator([
                            MinLengthValidator(10,
                                errorText:
                                    'Phone number must be 10 digits longer'),
                            MaxLengthValidator(10,
                                errorText:
                                    'Phone number can be 10 digits longer')
                          ]),
                        ),
                      ],
                    ),
                    const SizedBox(height: 60),
                    Container(
                      decoration: const BoxDecoration(
                          color: Color(0xffF07846),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: MaterialButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            Get.toNamed(MyRouter.verifyOTPScreen);
                            SuccessToast(context, 'Please check your Inbox',
                                'We have send a otp to your Phone number, verify otp to Login');
                          } else {
                            WarningToast(context, "Check your Phone Number",
                                'Phone number must contain 10 digits');
                          }
                        },
                        child: const Text(
                          "         Get OTP         ",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: FittedBox(
                        child: Row(
                          children: [
                            Container(
                              height: 4,
                              width: MediaQuery.of(context).size.width,
                              color: AppTheme.textColorDarkGreyDK,
                            ),
                            const Text(
                              " Or ",
                              style: TextStyle(fontSize: 41),
                            ),
                            Container(
                              height: 4,
                              width: MediaQuery.of(context).size.width,
                              color: AppTheme.textColorDarkGreyDK,
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () => signInFaceBook(),
                          child: Container(
                            height: 58,
                            width: 58,
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey,
                              ),
                              borderRadius: BorderRadius.circular(5),
                              color: AppTheme.colorWhite,
                            ),
                            child: const Center(
                                child: FaIcon(
                              FontAwesomeIcons.facebookF,
                              size: 38,
                              color: Colors.blue,
                            )),
                          ),
                        ),
                        const SizedBox(
                          width: 29,
                        ),
                        InkWell(
                          onTap: () => signInFaceBook(),
                          child: Container(
                            height: 58,
                            width: 58,
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey,
                              ),
                              borderRadius: BorderRadius.circular(5),
                              color: AppTheme.colorWhite,
                            ),
                            child: Center(
                                child: Image.asset(AppAssets.googleIcon)),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          "Don't have an account? ",
                          style: TextStyle(color: Colors.black, fontSize: 14),
                        ),
                        TextButton(
                          onPressed: () {
                            Get.toNamed(MyRouter.signUpScreen);
                          },
                          child: const Text(
                            "Sign Up",
                            style: TextStyle(
                                color: Color(0xffF07846), fontSize: 14),
                          ),
                        ),
                      ],
                    )
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

bool isMobileNumberValid(String phoneNumber) {
  String regexPattern = r'^(?:[+0][1-9])?[0-9]{10,12}$';
  var regExp = new RegExp(regexPattern);

  if (phoneNumber.length == 0) {
    return false;
  } else if (regExp.hasMatch(phoneNumber)) {
    return true;
  }
  return false;
}

signInFaceBook() {}
