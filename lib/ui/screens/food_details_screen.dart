import 'package:flutter/material.dart';
import 'package:woo_customer/ui/widget/bottomNavBar.dart';

import '../../res/app_assets.dart';
import '../../res/theme/theme.dart';
import '../widget/common_button.dart';
import '../widget/common_widget.dart';
import '../widget/common_items.dart';
import '../widget/common_widgets.dart';

class FoodDetails extends StatefulWidget {
  FoodDetails({Key? key}) : super(key: key);

  @override
  State<FoodDetails> createState() => _FoodDetailsState();
}

class _FoodDetailsState extends State<FoodDetails> {
  bool value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomNavigationBar(),
      appBar: commonAppBar("Food Details"),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  height: MediaQuery.of(context).size.height * 0.3,
                  child: Image.asset(
                    AppAssets.restroThali1,
                    fit: BoxFit.cover,
                  )),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  children: [
                    addHeight(15),
                    const Text(
                      "Food Name",
                      style: TextStyle(
                          color: AppTheme.textColorDarkGreyDK,
                          fontSize: 22,
                          fontWeight: FontWeight.w600),
                    ),
                    addHeight(5),
                    Divider(
                      height: 2,
                      thickness: 2,
                      color: AppTheme.primaryColor,
                      indent: 150,
                      endIndent: 160,
                    ),
                    addHeight(20),
                    Container(
                      margin: const EdgeInsets.all(15),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: const [
                              Text(
                                "Food Rate",
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18,
                                ),
                              ),
                              Spacer(),
                              Icon(
                                Icons.heart_broken,
                                color: AppTheme.primaryColor,
                              ),
                              SizedBox(
                                width: 10,
                              )
                            ],
                          ),
                          addHeight(10),
                          const Text(
                              "Loren poresn is the power of tfasd fasdf asd fasd Loren poresn is the power of the owrld and the owrld afdfa sdf asdf asd fasd fasdf asd fasd Loren poresn is the power of the owrld and the owrld afdfa sdf asdf asd fasd fasdf asd fasd Loren poresn is the power of the owrld and the owrld afdfa sdf asdf asd fasd fasdf asd fasd Loren poresn is the power of the owrld and the owrld afdfa sdf asdf asd fasd fasdf asd fasd "),
                          addHeight(10),
                          const Text(
                            "Free Delivery",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          addHeight(10),
                          const Text(
                            "Delivery Time : 12:23 Pm",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          const Divider(
                            color: AppTheme.primaryColor,
                          ),
                          Row(
                            children: [
                              Checkbox(
                                activeColor: AppTheme.primaryColor,
                                shape: const CircleBorder(),
                                side: const BorderSide(
                                    color: AppTheme.primaryColor),
                                value: this.value,
                                onChanged: (value) {
                                  setState(() {
                                    this.value = value!;
                                  });
                                },
                              ),
                              const Text(
                                "Full (3-5 Person)",
                                style: TextStyle(fontSize: 18),
                              ),
                              Spacer(),
                              const Text(
                                "\$7.32",
                                style: TextStyle(
                                    fontSize: 18, color: AppTheme.primaryColor),
                              ),
                            ],
                          ),
                          const Divider(
                            color: AppTheme.primaryColor,
                          ),
                          Row(
                            children: [
                              Checkbox(
                                activeColor: AppTheme.primaryColor,
                                shape: const CircleBorder(),
                                side: const BorderSide(
                                    color: AppTheme.primaryColor),
                                value: this.value,
                                onChanged: (value) {
                                  setState(() {
                                    this.value = value!;
                                  });
                                },
                              ),
                              const Text(
                                "Medium (2-3 Person)",
                                style: TextStyle(fontSize: 18),
                              ),
                              Spacer(),
                              const Text(
                                "\$7.32",
                                style: TextStyle(
                                    fontSize: 18, color: AppTheme.primaryColor),
                              ),
                            ],
                          ),
                          const Divider(
                            color: AppTheme.primaryColor,
                          ),
                          Row(
                            children: [
                              Checkbox(
                                activeColor: AppTheme.primaryColor,
                                shape: const CircleBorder(),
                                side: const BorderSide(
                                    color: AppTheme.primaryColor),
                                value: value,
                                onChanged: (value) {
                                  setState(() {
                                    this.value = value!;
                                  });
                                },
                              ),
                              const Text(
                                "Small (1 Person)",
                                style: TextStyle(fontSize: 18),
                              ),
                              Spacer(),
                              const Text(
                                "\$7.32",
                                style: TextStyle(
                                    fontSize: 18, color: AppTheme.primaryColor),
                              ),
                            ],
                          ),
                          const Divider(
                            color: AppTheme.primaryColor,
                          ),
                          addHeight(20),
                          const Text(
                            "Add to ",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          Row(
                            children: [
                              Checkbox(
                                activeColor: AppTheme.primaryColor,
                                shape: const CircleBorder(),
                                side: const BorderSide(
                                    color: AppTheme.primaryColor),
                                value: value,
                                onChanged: (value) {
                                  setState(() {
                                    this.value = value!;
                                  });
                                },
                              ),
                              const Text(
                                "Onion Rings",
                                style: TextStyle(fontSize: 18),
                              ),
                              const Spacer(),
                              const Text(
                                "\$7.32",
                                style: TextStyle(
                                    fontSize: 18, color: AppTheme.primaryColor),
                              ),
                            ],
                          ),
                          const Divider(
                            color: AppTheme.primaryColor,
                          ),
                          Row(
                            children: [
                              Checkbox(
                                activeColor: AppTheme.primaryColor,
                                shape: const CircleBorder(),
                                side: const BorderSide(
                                    color: AppTheme.primaryColor),
                                value: this.value,
                                onChanged: (value) {
                                  setState(() {
                                    this.value = value!;
                                  });
                                },
                              ),
                              const Text(
                                "Cheese",
                                style: TextStyle(fontSize: 18),
                              ),
                              Spacer(),
                              const Text(
                                "\$7.32",
                                style: TextStyle(
                                    fontSize: 18, color: AppTheme.primaryColor),
                              ),
                            ],
                          ),
                          const Divider(
                            color: AppTheme.primaryColor,
                          ),
                          addHeight(20),
                          Row(
                            children: [
                              Text(
                                "Add to ",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              Spacer(),
                              addRemoveBtn()
                            ],
                          ),
                          addHeight(40),
                          CommonButton(
                            "Add",
                            () {},
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
