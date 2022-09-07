import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:woo_customer/ui/widget/bottomNavBar.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:woo_customer/res/theme/theme.dart';
import 'package:woo_customer/ui/screens/home_screen_5.dart';
import 'package:woo_customer/ui/widget/common_button.dart';

import '../../routers/my_router.dart';
import '../widget/common_widget.dart';

class ChooseLocationScreen extends StatefulWidget {
  const ChooseLocationScreen({Key? key}) : super(key: key);

  @override
  State<ChooseLocationScreen> createState() => _ChooseLocationScreenState();
}

class _ChooseLocationScreenState extends State<ChooseLocationScreen> {
  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(26.911252, 75.7296539),
    zoom: 14.4746,
  );
  Completer<GoogleMapController> _controller = Completer();
  static final CameraPosition _kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(26.911252, 75.7296539),
      tilt: 26.911252,
      zoom: 19.151926040649414);
  var items = [
    'SIKAR   1',
    'SIKAR 2',
    'SIKAR 3',
    'SIKAR 4',
    'SIKAR 5',
  ];
  String dropdownvalue = 'SIKAR  1';

  @override
  Widget build(BuildContext context) {
    if (defaultTargetPlatform == TargetPlatform.android) {
      AndroidGoogleMapsFlutter.useAndroidViewSurface = true;
    }
    return Scaffold(
      // floatingActionButton: FloatingActionButton.extended(
      //   onPressed: _goToTheLake,
      //   label: Text('To the lake!'),
      //   icon: Icon(Icons.directions_boat),
      // ),
      appBar: commonAppBar("LOGO"),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 40.h,
              ),
              const Text(
                "Choose Delivery Location",
                style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
              ),
              const Divider(
                height: 1,
                thickness: 2,
                indent: 150,
                endIndent: 180,
                color: AppTheme.primaryColor,
              ),
              const SizedBox(
                height: 40,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.all(10),
                    height: 300,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: GoogleMap(
                      mapType: MapType.hybrid,
                      initialCameraPosition: _kGooglePlex,
                      onMapCreated: (GoogleMapController controller) {
                        _controller.complete(controller);
                      },
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    "   Select Delivery Location",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 10, right: 10),
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(12),
                      ),
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Icon(
                              Icons.location_on_outlined,
                              color: AppTheme.primaryColor,
                              size: 32,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Tasula, north South",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            const Spacer(),
                            Container(
                              height: 50,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15)),
                                  border: Border.all(
                                      color: AppTheme.primaryColor, width: 2)),
                              child: MaterialButton(
                                onPressed: () {
                                  Get.toNamed(MyRouter.changeLocationScreen);
                                },
                                child: const Text(
                                  "Change",
                                  style: TextStyle(
                                      color: AppTheme.primaryColor,
                                      fontSize: 18),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "187 ramjet nagar",
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),
                            Text(
                              "visual nagar jaipur 230232, INDIA",
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  CommonButton('Confirm', () {
                    Get.toNamed(MyRouter.homeScreen);
                  })
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _changeLocation() async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
  }
}
