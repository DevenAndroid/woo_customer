import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:woo_customer/ui/widget/bottomNavBar.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:woo_customer/res/app_assets.dart';
import 'package:woo_customer/routers/my_router.dart';
import 'package:woo_customer/ui/widget/common_button.dart';
import 'package:woo_customer/ui/widget/common_widgets.dart';

import '../../models/onboarding_model_self.dart';
import '../../res/theme/theme.dart';

class OnBoardingProcessScreen extends StatefulWidget {
  const OnBoardingProcessScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingProcessScreen> createState() =>
      _OnBoardingProcessScreenState();
}

class _OnBoardingProcessScreenState extends State<OnBoardingProcessScreen> {
  int currentIndex = 0;
  PageController? _controller;
  final _pageController = PageController();
  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller!.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 43.w,
          ),
          child: Stack(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height.h,
                child: PageView(
                  controller: _pageController,
                  children: <Widget>[
                    Container(
                        child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            AppAssets.onBoarding1,
                            height: MediaQuery.of(context).size.height * .3.h,
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Text(
                            "Discover Place Near You",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 24.sp,
                                color: AppTheme.primaryColor),
                            textAlign: TextAlign.center,
                          ),
                          const Text(
                            "Based out of Southern California, "
                            "our Security Consultants develop security strategies, "
                            "solutions and recommendations, not just for the "
                            "short term, but are ever mindful of our "
                            "client’s long-term goals and concerns.",
                            style: TextStyle(
                              fontSize: 16,
                              color: Color(0xff242424),
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    )),
                    Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 10.h,
                          ),
                          Image.asset(
                            AppAssets.onBoarding2,
                            height: MediaQuery.of(context).size.height * .3.h,
                          ),
                          addHeight(10.h),
                          const Text(
                            "Order Your Favourites",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 24,
                                color: AppTheme.primaryColor),
                            textAlign: TextAlign.center,
                          ),
                          const Text(
                            "Based out of Southern California, "
                            "our Security Consultants develop security strategies, "
                            "solutions and recommendations, not just for the "
                            "short term, but are ever mindful of our "
                            "client’s long-term goals and concerns",
                            style: TextStyle(
                              color: Color(0xff242424),
                              fontSize: 16,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(
                            height: 35,
                          ),
                        ],
                      ),
                    ),
                    Container(
                        child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            AppAssets.onBoarding3,
                            height: MediaQuery.of(context).size.height * .3.h,
                          ),
                          SizedBox(
                            height: 70.h,
                          ),
                          const Text(
                            "Get Fastest Delivery",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 24,
                                color: AppTheme.primaryColor),
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            "Real Time Tracking will keep you posted about order progress ",
                            style: TextStyle(
                              color: Color(0xff242424),
                              fontSize: 16.sp,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    )),
                  ],
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * .82.h,
                child: Column(
                  children: [
                    Container(
                        decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(4.0)),
                            color: AppTheme.primaryColor.withOpacity(.23)),
                        // width: MediaQuery.of(context).size.width,
                        alignment: Alignment.center,
                        margin: EdgeInsets.symmetric(
                            horizontal:
                                MediaQuery.of(context).size.width * .4 - 51.w),
                        child: SmoothPageIndicator(
                            controller: _pageController, // PageController
                            count: 3,
                            effect: const SlideEffect(
                                spacing: 0.0,
                                radius: 4.0,
                                dotWidth: 34.0,
                                dotHeight: 8.0,
                                paintStyle: PaintingStyle.stroke,
                                strokeWidth: 1.5,
                                dotColor: Colors.transparent,
                                activeDotColor: AppTheme
                                    .primaryColor), // your preferred effect
                            onDotClicked: (index) {})),
                    SizedBox(
                      height: 35.h,
                    ),
                    CommonButton(
                      "Get Start",
                      () {
                        if (_pageController.page == 2) {
                          Get.offAllNamed(MyRouter.loginScreen);
                        } else {
                          _pageController.nextPage(
                              duration: Duration(seconds: 2),
                              curve: Curves.bounceOut);
                        }
                      },
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 6,
      width: currentIndex == index ? 28 : 10,
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: currentIndex == index
            ? AppTheme.primaryColor
            : Colors.grey.shade300,
      ),
    );
  }
}
