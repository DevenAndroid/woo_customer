import 'package:flutter/material.dart';
import 'package:woo_customer/ui/widget/bottomNavBar.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:woo_customer/res/app_assets.dart';
import 'package:woo_customer/routers/my_router.dart';
import 'package:woo_customer/ui/screens/home_screen_5.dart';
import 'package:woo_customer/ui/screens/order_tracking_screen.dart';
import 'package:woo_customer/ui/widget/bottomNavBar.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // final UserDetails args =
    // ModalRoute.of(context)?.settings.arguments as UserDetails;

    return MaterialApp(
      home: Scaffold(
        bottomNavigationBar: const CustomBottomNavigationBar(),
        backgroundColor: const Color(0xff212121),
        body: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage(AppAssets.girlmgRound),
            ),
            const SizedBox(
              height: 20.0,
              width: 150.0,
//                  child: Divider(
//                    color: Colors.white,
//                  ),
            ),
            const Text(
              "Nita Ambani",
              style: TextStyle(
                fontFamily: 'Pacifico',
                fontSize: 30.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 10.0,
              width: 150.0,
//                  child: Divider(
//                    color: Colors.white,
//                  ),
            ),
            const Text(
              "nita@ambani.com",
              style: TextStyle(
                fontFamily: 'Source Sans Pro',
                color: Colors.white,
                fontSize: 13.0,
                letterSpacing: 2.5,
                //fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20.0,
              width: 150.0,
              child: Divider(
                color: Colors.white,
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0),
              ),
              color: const Color(0xff373737),
              margin:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomeScreen()));
                },
                leading: const Icon(
                  Icons.person,
                  color: Colors.white,
                ),
                title: const Text(
                  'Edit Profile',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Source Sans Pro',
                    fontSize: 17.0,
                  ),
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Colors.white,
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0),
              ),
              color: const Color(0xff373737),
              margin:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const OrderTrackingScreen()));
                },
                leading: const Icon(
                  Icons.history,
                  color: Colors.white,
                ),
                title: const Text(
                  'Your orders',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Source Sans Pro',
                    fontSize: 17.0,
                  ),
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Colors.white,
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0),
              ),
              color: const Color(0xff373737),
              margin:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                onTap: () {
                  Get.toNamed(MyRouter.paymentDetails);

                  // Navigator.push(
                  //     context,
                  //     // MaterialPageRoute(
                  //     //     builder: (context) => OrderTrackingScreen()),
                  //
                  // );
                },
                leading: const Icon(
                  Icons.payment,
                  color: Colors.white,
                ),
                title: const Text(
                  'Payments',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Source Sans Pro',
                    fontSize: 17.0,
                  ),
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Colors.white,
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0),
              ),
              color: const Color(0xff373737),
              margin:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const OrderTrackingScreen()));
                },
                leading: const Icon(
                  Icons.location_on_outlined,
                  color: Colors.white,
                ),
                title: const Text(
                  'Address',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Source Sans Pro',
                    fontSize: 17.0,
                  ),
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Colors.white,
                ),
              ),
            ),
            Card(
              color: const Color(0xff373737),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0),
              ),
              margin:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                onTap: () {
                  Get.toNamed(MyRouter.homeScreen);
                },
                leading: const Icon(
                  Icons.help_center_outlined,
                  color: Colors.white,
                ),
                title: const Text(
                  "Contact Us",
                  style: TextStyle(
                      fontSize: 17.0,
                      color: Colors.white,
                      fontFamily: 'Source Sans Pro'),
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Colors.white,
                ),
              ),
            ),
            Card(
              color: const Color(0xff373737),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0),
              ),
              margin:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                onTap: () {
                  showAlertDialog(context);
                },
                leading: const Icon(
                  Icons.logout,
                  color: Colors.white,
                ),
                title: const Text(
                  'Logout',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Source Sans Pro',
                    fontSize: 17.0,
                  ),
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        )),
      ),
    );
  }
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
