// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';   import 'package:woo_customer/ui/widget/bottomNavBar.dart';
// import 'package:shrink_sidemenu/shrink_sidemenu.dart';
//
// import '../../res/theme/theme.dart';
// import 'dart:typed_data';
//
// import 'package:card_swiper/card_swiper.dart';
// import 'package:flutter/material.dart';   import 'package:woo_customer/ui/widget/bottomNavBar.dart';
// import 'package:shrink_sidemenu/shrink_sidemenu.dart';
// import 'package:woo_customer/res/app_assets.dart';
// import 'package:woo_customer/res/theme/theme.dart';
// import 'package:woo_customer/ui/widget/common_button.dart';
// import 'package:woo_customer/ui/widget/common_widget.dart';
// import 'package:woo_customer/ui/widget/common_widgets.dart';
//
// import '../screens/items/menu_items.dart';
// import '../widget/bottomNavBar.dart';
//
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key, required this.title}) : super(key: key);
//
//   final String title;
//
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;
//   bool isOpened = false;
//
//   final GlobalKey<SideMenuState> _sideMenuKey = GlobalKey<SideMenuState>();
//   final GlobalKey<SideMenuState> _endSideMenuKey = GlobalKey<SideMenuState>();
//
//   void _incrementCounter() {
//     setState(() {
//       _counter++;
//     });
//   }
//
//   toggleMenu([bool end = false]) {
//     if (end) {
//       final _state = _endSideMenuKey.currentState!;
//       if (_state.isOpened) {
//         _state.closeSideMenu();
//       } else {
//         _state.openSideMenu();
//       }
//     } else {
//       final _state = _sideMenuKey.currentState!;
//       if (_state.isOpened) {
//         _state.closeSideMenu();
//       } else {
//         _state.openSideMenu();
//       }
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     final List _gridItems = List.generate(90, (i) => "Item $i");
//     final screenSize = MediaQuery.of(context).size;
//     final double itemHeight = screenSize.height / 2.8;
//     final double itemWidth = screenSize.width / 2;
//     return SideMenu(
//       key: _endSideMenuKey,
//       inverse: true,
//       // end side menu
//       background: Colors.green[700],
//       type: SideMenuType.slideNRotate,
//       menu: Padding(
//         padding: const EdgeInsets.only(left: 25.0),
//         child: buildMenu(),
//       ),
//       onChange: (_isOpened) {
//         setState(() => isOpened = _isOpened);
//       },
//       child: SideMenu(
//         key: _sideMenuKey,
//         menu: buildMenu(),
//         type: SideMenuType.slideNRotate,
//         onChange: (_isOpened) {
//           setState(() => isOpened = _isOpened);
//         },
//         child: IgnorePointer(
//           ignoring: isOpened,
//           child: Scaffold(
//             appBar: commonAppBarHome("Tabula"),
//             body: SingleChildScrollView(
//               child: Padding(
//                 padding: const EdgeInsets.all(15.0),
//                 child: Column(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           const Text(
//                             "Offer Zone",
//                             style: TextStyle(
//                               fontSize: 20,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                           GestureDetector(
//                             onTap: () {},
//                             child: const Text(
//                               "See All",
//                               style: TextStyle(
//                                 fontSize: 18,
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                       const Divider(
//                         height: 1,
//                         thickness: 2,
//                         indent: 1,
//                         endIndent: 340,
//                         color: AppTheme.primaryColor,
//                       ),
//                       addHeight(20),
//                       Container(
//                         height: 150,
//                         child: Swiper(
//                           autoplay: true,
//                           itemCount: 12,
//                           itemBuilder: (context, index) {
//                             return ListView.builder(
//                               physics: ScrollPhysics(),
//                               itemCount: 12,
//                               shrinkWrap: true,
//                               scrollDirection: Axis.horizontal,
//                               itemBuilder: (context, index) {
//                                 return Container(
//                                   width: screenSize.width,
//                                   decoration: const BoxDecoration(
//                                       image: DecorationImage(
//                                           image: AssetImage(
//                                               AppAssets.bannerHomePage),
//                                           fit: BoxFit.cover),
//                                       color: AppTheme.continerBackgroundColor),
//                                   child: Stack(
//                                     children: [
//                                       Positioned(
//                                           left: 50,
//                                           top: 20,
//                                           child: Column(
//                                             mainAxisAlignment:
//                                                 MainAxisAlignment.start,
//                                             crossAxisAlignment:
//                                                 CrossAxisAlignment.start,
//                                             children: [
//                                               const Text(
//                                                 "30% Discount",
//                                                 style: TextStyle(
//                                                     color:
//                                                         AppTheme.primaryColor,
//                                                     fontSize: 16,
//                                                     fontWeight:
//                                                         FontWeight.bold),
//                                               ),
//                                               addHeight(10),
//                                               const Text(
//                                                 "Order any food from app \nand get the discount",
//                                                 style: TextStyle(
//                                                     color: Colors.black,
//                                                     fontSize: 12,
//                                                     fontWeight:
//                                                         FontWeight.bold),
//                                               ),
//                                               addHeight(10),
//                                               SizedBox(
//                                                   width: 140,
//                                                   child: FittedBox(
//                                                       child: CommonButton(
//                                                           'Order Now', () {})))
//                                             ],
//                                           )),
//                                     ],
//                                   ),
//                                 );
//                               },
//                             );
//                           },
//                         ),
//                       ),
//                       addHeight(20),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           const Text(
//                             "Top Picks for you",
//                             style: TextStyle(
//                               fontSize: 20,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                           GestureDetector(
//                             onTap: () {},
//                             child: const Text(
//                               "See All",
//                               style: TextStyle(
//                                 fontSize: 18,
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                       const Divider(
//                         height: 1,
//                         thickness: 2,
//                         indent: 1,
//                         endIndent: 340,
//                         color: AppTheme.primaryColor,
//                       ),
//                       addHeight(20),
//                       Container(
//                         height: screenSize.height * 0.28,
//                         // clipBehavior: Clip.antiAlias,
//                         // // margin: EdgeInsets.all(10),
//                         // decoration: BoxDecoration(
//                         //     color: AppTheme.primaryColor,
//                         //     borderRadius: BorderRadius.circular(20)),
//                         child: Swiper(
//                           autoplay: false,
//                           outer: false,
//                           autoplayDisableOnInteraction: true,
//                           itemBuilder: (BuildContext context, int index) {
//                             return ListView.builder(
//                               scrollDirection: Axis.horizontal,
//                               shrinkWrap: true,
//                               itemBuilder: (context, index) {
//                                 return homeScreenGridView();
//                               },
//                             );
//                           },
//                           itemCount: 15,
//                           // pagination: const SwiperPagination(),
//                           // control: const SwiperControl(size: 0), // remove arrows
//                         ),
//                       ),
//                       addHeight(20),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           const Text(
//                             "Popular Brands",
//                             style: TextStyle(
//                               fontSize: 20,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                           GestureDetector(
//                             onTap: () {},
//                             child: const Text(
//                               "See All",
//                               style: TextStyle(
//                                 fontSize: 18,
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                       addHeight(5),
//                       const Divider(
//                         height: 1,
//                         thickness: 2,
//                         indent: 1,
//                         endIndent: 320,
//                         color: AppTheme.primaryColor,
//                       ),
//                       addHeight(20),
//                       Container(
//                         height: 200,
//                         child: ListView.builder(
//                           itemCount: 12,
//                           scrollDirection: Axis.horizontal,
//                           itemBuilder: (context, index) {
//                             return homeScreenPopularBrands();
//                           },
//                         ),
//                       ),
//                       addHeight(20),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           const Text(
//                             "Popular Items",
//                             style: TextStyle(
//                               fontSize: 20,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                           GestureDetector(
//                             onTap: () {},
//                             child: const Text(
//                               "See All",
//                               style: TextStyle(
//                                 fontSize: 18,
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                       addHeight(5),
//                       const Divider(
//                         height: 1,
//                         thickness: 2,
//                         indent: 1,
//                         endIndent: 320,
//                         color: AppTheme.primaryColor,
//                       ),
//                       addHeight(20),
//                       Container(
//                         height: screenSize.height * 0.28,
//                         // clipBehavior: Clip.antiAlias,
//                         // // margin: EdgeInsets.all(10),
//                         // decoration: BoxDecoration(
//                         //     color: AppTheme.primaryColor,
//                         //     borderRadius: BorderRadius.circular(20)),
//                         child: Swiper(
//                           autoplay: false,
//                           outer: false,
//                           autoplayDisableOnInteraction: true,
//                           itemBuilder: (BuildContext context, int index) {
//                             return ListView.builder(
//                               scrollDirection: Axis.horizontal,
//                               shrinkWrap: true,
//                               itemBuilder: (context, index) {
//                                 return homePopularItemsListView();
//                               },
//                             );
//                           },
//                           itemCount: 15,
//                           // pagination: const SwiperPagination(),
//                           // control: const SwiperControl(size: 0), // remove arrows
//                         ),
//                       ),
//                       addHeight(20),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           const Text(
//                             "Restaurants Near By You",
//                             style: TextStyle(
//                               fontSize: 20,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                           GestureDetector(
//                             onTap: () {},
//                             child: const Text(
//                               "See All",
//                               style: TextStyle(
//                                 fontSize: 18,
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                       addHeight(5),
//                       const Divider(
//                         height: 1,
//                         thickness: 2,
//                         indent: 1,
//                         endIndent: 320,
//                         color: AppTheme.primaryColor,
//                       ),
//                       addHeight(20),
//                       Column(
//                         children: [
//                           Container(
//                             height: 270,
//                             // margin: EdgeInsets.all(10),
//                             child: SingleChildScrollView(
//                               child: ListView.builder(
//                                 itemCount: 14,
//                                 shrinkWrap: true,
//                                 physics: NeverScrollableScrollPhysics(),
//                                 // scrollDirection: Axis.horizontal,
//                                 itemBuilder: (context, index) {
//                                   return Container(
//                                     // margin: EdgeInsets.all(10),
//                                     height: 150,
//                                     width: screenSize.width,
//                                     decoration: const BoxDecoration(
//                                         image: DecorationImage(
//                                             image: AssetImage(
//                                                 AppAssets.bannerHomePage),
//                                             fit: BoxFit.cover),
//                                         color:
//                                             AppTheme.continerBackgroundColor),
//                                     child: Stack(
//                                       children: [
//                                         Positioned(
//                                             left: 50,
//                                             top: 20,
//                                             child: Column(
//                                               mainAxisAlignment:
//                                                   MainAxisAlignment.start,
//                                               crossAxisAlignment:
//                                                   CrossAxisAlignment.start,
//                                               children: [
//                                                 const Text(
//                                                   "30% Discount",
//                                                   style: TextStyle(
//                                                       color:
//                                                           AppTheme.primaryColor,
//                                                       fontSize: 16,
//                                                       fontWeight:
//                                                           FontWeight.bold),
//                                                 ),
//                                                 addHeight(10),
//                                                 const Text(
//                                                   "Order any food from app \nand get the discount",
//                                                   style: TextStyle(
//                                                       color: Colors.black,
//                                                       fontSize: 12,
//                                                       fontWeight:
//                                                           FontWeight.bold),
//                                                 ),
//                                                 addHeight(10),
//                                                 SizedBox(
//                                                     width: 140,
//                                                     child: FittedBox(
//                                                         child: CommonButton(
//                                                             'Order Now',
//                                                             () {})))
//                                               ],
//                                             )),
//                                       ],
//                                     ),
//                                   );
//                                 },
//                               ),
//                             ),
//                           ),
//                           addHeight(20),
//                           CommonButton('See All', () {})
//                         ],
//                       ),
//                       addHeight(20),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           const Text(
//                             "Coupons",
//                             style: TextStyle(
//                               fontSize: 20,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                           GestureDetector(
//                             onTap: () {},
//                             child: const Text(
//                               "See All",
//                               style: TextStyle(
//                                 fontSize: 18,
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                       addHeight(5),
//                       const Divider(
//                         height: 1,
//                         thickness: 2,
//                         indent: 1,
//                         endIndent: 320,
//                         color: AppTheme.primaryColor,
//                       ),
//                       addHeight(20),
//                       Container(
//                         height: 250,
//                         child: ListView.builder(
//                           itemCount: 13,
//                           itemBuilder: (context, index) {
//                             return Container(
//                               margin: EdgeInsets.only(top: 20),
//                               decoration: const BoxDecoration(
//                                   color: AppTheme.continerBackgroundColor,
//                                   boxShadow: [
//                                     BoxShadow(color: Colors.red),
//                                     BoxShadow(color: Colors.blue),
//                                   ]),
//                               child: Row(
//                                 mainAxisAlignment: MainAxisAlignment.start,
//                                 children: [
//                                   Container(
//                                       height: 130,
//                                       child: Image.asset(
//                                         AppAssets.offerImageDeepak,
//                                         fit: BoxFit.cover,
//                                       )),
//                                   const SizedBox(
//                                     width: 40,
//                                   ),
//                                   // Container(
//                                   //   width: 10,
//                                   //   child: DottedLine(
//                                   //     direction: Axis.vertical,
//                                   //     lineThickness: 1.0,
//                                   //     dashLength: 4.0,
//                                   //     dashColor: Colors.black,
//                                   //     dashGradient: [Colors.red, Colors.blue],
//                                   //     dashRadius: 0.0,
//                                   //     dashGapLength: 4.0,
//                                   //     dashGapColor: Colors.black54,
//                                   //     dashGapGradient: [Colors.red, Colors.blue],
//                                   //     dashGapRadius: 0.0,
//                                   //   ),
//                                   // ),
//                                   Column(
//                                     mainAxisAlignment: MainAxisAlignment.start,
//                                     crossAxisAlignment:
//                                         CrossAxisAlignment.start,
//                                     children: const [
//                                       SizedBox(
//                                         height: 10,
//                                       ),
//                                       Text(
//                                         "Barbeque Nation",
//                                         style: TextStyle(
//                                           fontSize: 18,
//                                           fontWeight: FontWeight.bold,
//                                         ),
//                                       ),
//                                       SizedBox(
//                                         height: 20,
//                                       ),
//                                       Text(
//                                         "30% Discount",
//                                         style: TextStyle(
//                                           fontSize: 16,
//                                           color: AppTheme.primaryColor,
//                                         ),
//                                       ),
//                                       SizedBox(
//                                         height: 20,
//                                       ),
//                                       Text(
//                                         "Validity : 21/12/2021",
//                                         style: TextStyle(
//                                           fontSize: 18,
//                                           fontWeight: FontWeight.bold,
//                                         ),
//                                       ),
//                                       SizedBox(
//                                         height: 20,
//                                       )
//                                     ],
//                                   ),
//                                 ],
//                               ),
//                             );
//                           },
//                         ),
//                       ),
//                     ]),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//
//   PreferredSize commonAppBarHome(
//     String title,
//   ) {
//     return PreferredSize(
//         preferredSize: Size.fromHeight(90.0),
//         child: AppBar(
//           shape: const RoundedRectangleBorder(
//               borderRadius: BorderRadius.vertical(
//             bottom: Radius.circular(20),
//           )),
//           // backgroundColor: title == 'Home' ? Colors.white : AppTheme.primaryColor,
//           backgroundColor: AppTheme.primaryColor,
//           leading: IconButton(
//             icon: const Icon(Icons.menu),
//             onPressed: () => toggleMenu(),
//           ),
//           title: Container(
//             margin: EdgeInsets.only(left: 30),
//             child: Column(
//               children: [
//                 Row(
//                   children: [
//                     Icon(Icons.location_on_outlined),
//                     addWidth(10),
//                     Text("Tasula")
//                   ],
//                 ),
//                 Row(
//                   children: [
//                     Text(
//                       "Restaurant",
//                       style: TextStyle(
//                           fontWeight: FontWeight.w400, color: Colors.white60),
//                     ),
//                     Text(
//                       " Mustafapsa",
//                       style: TextStyle(
//                           fontWeight: FontWeight.w400, color: Colors.white60),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//           centerTitle: true,
//         ));
//   }
//
//   Widget buildMenu() {
//     return SingleChildScrollView(
//       padding: const EdgeInsets.symmetric(vertical: 50.0),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Padding(
//             padding: const EdgeInsets.only(left: 16.0),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: const [
//                 CircleAvatar(
//                   backgroundColor: Colors.white,
//                   radius: 22.0,
//                 ),
//                 SizedBox(height: 16.0),
//                 Text(
//                   "Hello, John Doe",
//                   style: TextStyle(color: Colors.white),
//                 ),
//                 SizedBox(height: 20.0),
//               ],
//             ),
//           ),
//           ListTile(
//             onTap: () {},
//             leading: const Icon(Icons.home, size: 20.0, color: Colors.white),
//             title: const Text("Home"),
//             textColor: Colors.white,
//             dense: true,
//           ),
//           ListTile(
//             onTap: () {},
//             leading: const Icon(Icons.verified_user,
//                 size: 20.0, color: Colors.white),
//             title: const Text("Profile"),
//             textColor: Colors.white,
//             dense: true,
//
//             // padding: EdgeInsets.zero,
//           ),
//           ListTile(
//             onTap: () {},
//             leading: const Icon(Icons.monetization_on,
//                 size: 20.0, color: Colors.white),
//             title: const Text("Wallet"),
//             textColor: Colors.white,
//             dense: true,
//
//             // padding: EdgeInsets.zero,
//           ),
//           ListTile(
//             onTap: () {},
//             leading: const Icon(Icons.shopping_cart,
//                 size: 20.0, color: Colors.white),
//             title: const Text("Cart"),
//             textColor: Colors.white,
//             dense: true,
//
//             // padding: EdgeInsets.zero,
//           ),
//           ListTile(
//             onTap: () {},
//             leading:
//                 const Icon(Icons.star_border, size: 20.0, color: Colors.white),
//             title: const Text("Favorites"),
//             textColor: Colors.white,
//             dense: true,
//
//             // padding: EdgeInsets.zero,
//           ),
//           ListTile(
//             onTap: () {},
//             leading:
//                 const Icon(Icons.settings, size: 20.0, color: Colors.white),
//             title: const Text("Settings"),
//             textColor: Colors.white,
//             dense: true,
//
//             // padding: EdgeInsets.zero,
//           ),
//         ],
//       ),
//     );
//   }
// }
