import 'dart:async';

import 'package:flutter/material.dart';
import 'package:woo_customer/ui/widget/bottomNavBar.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:woo_customer/res/theme/theme.dart';

import '../widget/common_widget.dart';

class ChangeLocationScreen extends StatefulWidget {
  const ChangeLocationScreen({Key? key}) : super(key: key);

  @override
  State<ChangeLocationScreen> createState() => _ChangeLocationScreenState();
}

class _ChangeLocationScreenState extends State<ChangeLocationScreen> {
  static final CameraPosition _kGooglePlex = const CameraPosition(
    target: LatLng(26.911252, 75.7296539),
    zoom: 14.4746,
  );
  Completer<GoogleMapController> _controller = Completer();
  static final CameraPosition _kLake = const CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(26.911252, 75.7296539),
      tilt: 26.911252,
      zoom: 19.151926040649414);
  var items = [
    'SIKAR  1',
    'SIKAR 2',
    'SIKAR 3',
    'SIKAR 4',
    'SIKAR 5',
  ];
  String dropdownvalue = 'SIKAR  1';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const CustomBottomNavigationBar(),
      appBar: commonAppBar("Logo"),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              const Text(
                "CHANGE LOCATION",
                style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
              ),
              const Divider(
                height: 1,
                thickness: 2,
                indent: 140,
                endIndent: 140,
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
                  Row(
                    children: [
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("City"),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            decoration: const BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(12),
                                ),
                                color: AppTheme.continerBackgroundColor),
                            child: Row(
                              children: [
                                const Icon(
                                  Icons.location_on_outlined,
                                  color: AppTheme.primaryColor,
                                  size: 32,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                DropdownButton(
                                  // Initial Value
                                  value: dropdownvalue,

                                  // Down Arrow Icon
                                  icon: const Icon(Icons.keyboard_arrow_down),

                                  // Array list of items
                                  items: items.map((String items) {
                                    return DropdownMenuItem(
                                      value: items,
                                      child: Text(items),
                                    );
                                  }).toList(),
                                  // After selecting the desired option,it will
                                  // change button value to selected value
                                  onChanged: (String? newValue) {
                                    setState(() {
                                      dropdownvalue = newValue!;
                                    });
                                  },
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("District"),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            decoration: const BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(12),
                                ),
                                color: AppTheme.continerBackgroundColor),
                            child: Row(
                              children: [
                                const Icon(
                                  Icons.location_on_outlined,
                                  color: AppTheme.primaryColor,
                                  size: 32,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  // height: 100,
                                  width: 100,
                                  child: TextFormField(
                                    decoration: const InputDecoration(
                                        border: InputBorder.none,
                                        hintText: "District"),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "    Address",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 10, right: 10),
                    padding: const EdgeInsets.all(5),
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(12),
                        ),
                        color: AppTheme.continerBackgroundColor),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.location_on_outlined,
                          color: AppTheme.primaryColor,
                          size: 32,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          // height: 100,
                          width: 100,
                          child: TextFormField(
                            decoration: const InputDecoration(
                                border: InputBorder.none,
                                hintText: "Write here"),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.only(top: 30, left: 70, right: 70),
                    decoration: const BoxDecoration(
                        color: Color(0xffF07846),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: MaterialButton(
                      onPressed: () {},
                      child: const Text(
                        "Save Location",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
