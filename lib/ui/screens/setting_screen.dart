import 'package:flutter/material.dart';
import 'package:woo_customer/res/strings.dart';
import 'package:woo_customer/routers/my_router.dart';
import 'package:woo_customer/ui/widget/bottomNavBar.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:woo_customer/res/theme/theme.dart';
import 'package:woo_customer/ui/widget/common_widgets.dart';

import '../widget/common_widget.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  var items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];
  var textnames = [
    "My Account",
    "Favorite dishes",
    "Order History",
    "Notification",
    "Help & FAQ's",
    "Log Out",
  ];
  List<IconData> icons = [
    Icons.person,
    Icons.heart_broken,
    Icons.book_outlined,
    Icons.notifications,
    Icons.question_mark_outlined,
    Icons.login_outlined
  ];

  List ontap = [
    "restroDetailsScreen",
    "restroDetailsScreen",
    "restroDetailsScreen",
    "restroDetailsScreen",
    "restroDetailsScreen",
    "restroDetailsScreen",
    "restroDetailsScreen",
  ];
  final bool _customTileExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: CustomBottomNavigationBar(),
        appBar: commonAppBar(
          "Settings",
        ),
        body: SafeArea(
          child: Container(
            margin: EdgeInsets.all(20),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.only(top: 20),
                  alignment: Alignment.center,
                  height: 60,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(.08),
                          offset: const Offset(0, 0),
                          blurRadius: 6,
                        ),
                      ],
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      color: AppTheme.continerBackgroundColor),
                  child: GestureDetector(
                    onTap: () {
                      Get.toNamed(MyRouter.profileScreen);
                    },
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          icons[0],
                          color: AppTheme.primaryColor,
                        ),
                        addWidth(20),
                        Text(
                          textnames[0],
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        Spacer(),
                        Icon(
                          Icons.arrow_forward_ios,
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.only(top: 20),
                  alignment: Alignment.center,
                  height: 60,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(.08),
                          offset: const Offset(0, 0),
                          blurRadius: 6,
                        ),
                      ],
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      color: AppTheme.continerBackgroundColor),
                  child: GestureDetector(
                    onTap: () {
                      Get.toNamed(MyRouter.favoriteDishes);
                    },
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          icons[1],
                          color: AppTheme.primaryColor,
                        ),
                        addWidth(20),
                        Text(
                          textnames[1],
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        Spacer(),
                        Icon(
                          Icons.arrow_forward_ios,
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.only(top: 20),
                  alignment: Alignment.center,
                  height: 60,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(.08),
                          offset: const Offset(0, 0),
                          blurRadius: 6,
                        ),
                      ],
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      color: AppTheme.continerBackgroundColor),
                  child: GestureDetector(
                    onTap: () {
                      Get.toNamed(MyRouter.orderHistoryScreen);
                    },
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          icons[2],
                          color: AppTheme.primaryColor,
                        ),
                        addWidth(20),
                        Text(
                          textnames[2],
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        Spacer(),
                        Icon(
                          Icons.arrow_forward_ios,
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.only(top: 20),
                  alignment: Alignment.center,
                  height: 60,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(.08),
                          offset: const Offset(0, 0),
                          blurRadius: 6,
                        ),
                      ],
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      color: AppTheme.continerBackgroundColor),
                  child: GestureDetector(
                    onTap: () {
                      Get.toNamed(MyRouter.notificationScreen);
                    },
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          icons[3],
                          color: AppTheme.primaryColor,
                        ),
                        addWidth(20),
                        Text(
                          textnames[3],
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        Spacer(),
                        Icon(
                          Icons.arrow_forward_ios,
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.only(top: 20),
                  alignment: Alignment.center,
                  height: 60,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(.08),
                          offset: const Offset(0, 0),
                          blurRadius: 6,
                        ),
                      ],
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      color: AppTheme.continerBackgroundColor),
                  child: GestureDetector(
                    onTap: () {
                      Get.toNamed(MyRouter.notificationScreen);
                    },
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          icons[4],
                          color: AppTheme.primaryColor,
                        ),
                        addWidth(20),
                        Text(
                          textnames[4],
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        Spacer(),
                        Icon(
                          Icons.arrow_forward_ios,
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.only(top: 20),
                  alignment: Alignment.center,
                  height: 60,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(.08),
                          offset: const Offset(0, 0),
                          blurRadius: 6,
                        ),
                      ],
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      color: AppTheme.continerBackgroundColor),
                  child: GestureDetector(
                    onTap: () {
                      showAlertDialog(context);
                    },
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          icons[5],
                          color: AppTheme.primaryColor,
                        ),
                        addWidth(20),
                        Text(
                          textnames[5],
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        Spacer(),
                        Icon(
                          Icons.arrow_forward_ios,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }

  showAlertDialog(BuildContext context) {
    // Create button
    Widget okButton = Row(
      children: [
        TextButton(
          child: const Text("Yes"),
          onPressed: () {
            _logoutHandler(context);
          },
        ),
        TextButton(
          child: const Text("No"),
          onPressed: () => Navigator.pop(context),
        )
      ],
    );

    // Create AlertDialog
    AlertDialog alert = AlertDialog(
      title: const Text("Logout"),
      content: const Text("Are you sure you want to Logout?"),
      actions: [
        okButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  void _logoutHandler(BuildContext context) async {
    // SharedPreferences prefs = await SharedPreferences.getInstance();
    // prefs.remove('user_id');
    Navigator.pushNamedAndRemoveUntil(
        context, '/home', ModalRoute.withName('/home'));
  }
}
