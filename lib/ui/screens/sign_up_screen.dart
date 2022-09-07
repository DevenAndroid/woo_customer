import 'package:flutter/material.dart';
import 'package:woo_customer/ui/widget/bottomNavBar.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:get/get.dart';
import 'package:woo_customer/res/theme/theme.dart';
import 'package:woo_customer/ui/widget/common_button.dart';
import 'package:woo_customer/ui/widget/common_widget.dart';

import '../../res/app_assets.dart';
import '../../routers/my_router.dart';
import '../widget/custom_text_field.dart';
import 'login_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool eyeHide = true;

  final _formKey = GlobalKey<FormState>();

  final _nameController = TextEditingController();
  final _numberController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
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
                  height: MediaQuery.of(context).size.height * 0.25,
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
                // height: MediaQuery.of(context).size.height * 0.7,
                margin: const EdgeInsets.only(top: 150, left: 10, right: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      "Sign Up",
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
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
                      "Hello",
                      style: TextStyle(
                        fontSize: 25,
                        color: Color(0xffF07846),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "Sign Up to get Started",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "User Name",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white70,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(2)),
                              border:
                                  Border.all(color: Colors.grey, width: 0.3)),
                          child: CustomTextField(
                            controller: _nameController,
                            hintText: "Enter your name",
                            prefixChildIcon: const Icon(
                              Icons.person_outline_rounded,
                              color: AppTheme.primaryColor,
                            ),
                            keyboardType: TextInputType.text,
                            validator: MultiValidator([
                              RequiredValidator(errorText: 'Enter your name'),
                              MinLengthValidator(3,
                                  errorText: "Minimum length is 3"),
                            ]),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const Text(
                          "Mobile Number",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white70,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(2)),
                              border:
                                  Border.all(color: Colors.grey, width: 0.3)),
                          child: CustomTextField(
                            inputFormatters: [
                              FilteringTextInputFormatter.digitsOnly
                            ],
                            controller: _numberController,
                            hintText: "Enter your number",
                            prefixChildIcon: const Icon(
                              Icons.phone,
                              color: AppTheme.primaryColor,
                            ),
                            keyboardType: TextInputType.number,
                            validator: MultiValidator([
                              RequiredValidator(errorText: 'Enter your Number'),
                              MinLengthValidator(10,
                                  errorText: 'Minimum 10 numbers required'),
                              MaxLengthValidator(10,
                                  errorText: 'Maximum numbers length is 10')
                            ]),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "Email Id",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white70,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(2)),
                              border:
                                  Border.all(color: Colors.grey, width: 0.3)),
                          child: CustomTextField(
                            controller: _emailController,
                            hintText: "Enter your Email",
                            prefixChildIcon: const Icon(
                              Icons.mail_outline,
                              color: AppTheme.primaryColor,
                            ),
                            keyboardType: TextInputType.text,
                            validator: MultiValidator([
                              RequiredValidator(errorText: 'Enter  Email'),
                              EmailValidator(errorText: 'Enter valid Email'),
                            ]),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const Text(
                          "Password",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white70,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(2)),
                              border:
                                  Border.all(color: Colors.grey, width: 0.3)),
                          child: CustomTextField(
                            obscureText: eyeHide,
                            controller: _passwordController,
                            hintText: "Enter your Password",
                            prefixChildIcon: const Icon(
                              Icons.lock_outline,
                              color: AppTheme.primaryColor,
                            ),
                            suffixIcon: InkWell(
                                onTap: () {
                                  setState(() {
                                    eyeHide = !eyeHide;
                                  });
                                },
                                child: eyeHide == true
                                    ? const Icon(
                                        Icons.remove_red_eye_outlined,
                                        color: AppTheme.primaryColor,
                                      )
                                    : const Icon(
                                        Icons.visibility_off_outlined,
                                        color: AppTheme.primaryColor,
                                      )),
                            keyboardType: TextInputType.text,
                            validator: MultiValidator([
                              RequiredValidator(errorText: 'Enter Password'),
                              MinLengthValidator(8,
                                  errorText: "Minimum length is 8")
                            ]),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                      ],
                    ),
                    const SizedBox(height: 30),
                    CommonButton('Sign Up', () {
                      if (_formKey.currentState!.validate()) {
                        Get.toNamed(MyRouter.verifyOTPScreen);
                        SuccessToast(context, "Check your Inbox",
                            "We have send a otp to your Phone number, verify otp to complete sign up");
                      } else {
                        WarningToast(
                            context, "Please fill all required fields", "");
                      }
                    }),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * .3,
                          child: const Divider(
                            thickness: 2,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text(
                          "Or",
                          style: TextStyle(fontSize: 16),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * .3,
                          child: const Divider(
                            thickness: 2,
                          ),
                        )
                      ],
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
                        Text(
                          "Already have an account? ",
                          style: TextStyle(color: Colors.black, fontSize: 14),
                        ),
                        InkWell(
                          onTap: () {
                            Get.toNamed(MyRouter.loginScreen);
                          },
                          child: Text(
                            "Login",
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
