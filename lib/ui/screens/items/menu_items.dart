import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:woo_customer/routers/my_router.dart';
import 'package:woo_customer/ui/widget/common_widgets.dart';

import '../../../res/app_assets.dart';
import '../../../res/theme/theme.dart';

Container menuItemsGridView() {
  return Container(
    padding: const EdgeInsets.all(10),
    decoration: const BoxDecoration(
        color: AppTheme.continerBackgroundColor,
        borderRadius: BorderRadius.all(Radius.circular(20))),
    margin: const EdgeInsets.only(right: 10, left: 10),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
            margin: const EdgeInsets.only(right: 10),
            height: 130,
            width: 170,
            child: Image.asset(
              AppAssets.drinks_restrodetails,
              fit: BoxFit.cover,
            )),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: const [
            Text(
              "Fresh Drink",
              style: TextStyle(
                fontSize: 14,
              ),
            ),
            SizedBox(
              width: 70,
            ),
            SizedBox(
              height: 30,
              width: 20,
              child: Image(image: AssetImage(AppAssets.vegIconImg)),
            )
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 30,
              width: 30,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: AppTheme.primaryColor),
              child: FittedBox(
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.add),
                  color: AppTheme.colorWhite,
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            const Text(
              "1",
              style: TextStyle(color: AppTheme.primaryColor),
            ),
            const SizedBox(
              width: 10,
            ),
            Container(
              height: 30,
              width: 30,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: AppTheme.primaryColor),
              child: FittedBox(
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.add),
                  color: AppTheme.colorWhite,
                ),
              ),
            ),
          ],
        )
      ],
    ),
  );
}

Container homeScreenGridView() {
  return Container(
    // padding: EdgeInsets.all(5),
    decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            offset: const Offset(0, 0),
            blurRadius: 6,
          ),
        ],
        // image: DecorationImage(image: AssetImage(AppAssets.food1)),
        color: AppTheme.continerBackgroundColor,
        borderRadius: const BorderRadius.all(Radius.circular(20))),
    margin: const EdgeInsets.all(10),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
          onTap: () {
            Get.toNamed(MyRouter.foodDetailsScreen);
          },
          child: Container(
            // padding: const EdgeInsets.all(8),

            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20)),
              image: DecorationImage(
                  image: AssetImage(AppAssets.food1), fit: BoxFit.cover),
            ),
            // margin: EdgeInsets.only(right: 10),
            height: 110.h,
            width: 200.w,
            child: FittedBox(
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    child: Container(
                      alignment: Alignment.center,
                      child: Text(
                        "15% off",
                        style: TextStyle(color: Colors.white),
                      ),
                      height: 35,
                      width: 70,
                      decoration: const BoxDecoration(
                        color: AppTheme.primaryColor,
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(20),
                            topLeft: Radius.circular(20)),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    child: Container(
                      alignment: Alignment.center,
                      height: 40,
                      width: 200,
                      decoration: const BoxDecoration(
                        color: Colors.black26,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("  Burger ",
                              style: TextStyle(color: Colors.white)),
                          Container(
                            margin:
                                EdgeInsets.only(right: 10, bottom: 5, top: 5),
                            decoration: const BoxDecoration(
                              color: AppTheme.primaryColor,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)),
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              "  15% off  ",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: const [
            Icon(
              Icons.location_on_outlined,
              color: AppTheme.primaryColor,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              "McDonald's",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        const SizedBox(
          height: 5,
        ),
        Row(
          children: const [
            Icon(
              Icons.location_on_outlined,
              color: AppTheme.primaryColor,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              "30 Min",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              width: 40,
            ),
            SizedBox(
              height: 30,
              width: 20,
              child: Image(image: AssetImage(AppAssets.locationLogoImg)),
            ),
            Text(
              "2.5 kM",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ],
        ),
      ],
    ),
  );
}

Container homePopularItemsListView() {
  return Container(
    padding: EdgeInsets.all(5),
    decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            offset: const Offset(0, 0),
            blurRadius: 6,
          ),
        ],
        // image: DecorationImage(image: AssetImage(AppAssets.food1)),
        color: AppTheme.continerBackgroundColor,
        borderRadius: const BorderRadius.all(Radius.circular(20))),
    margin: const EdgeInsets.all(10),
    child: InkWell(
      onTap: () {
        Get.toNamed(MyRouter.foodDetailsScreen);
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            // padding: const EdgeInsets.all(8),

            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20)),
              image: DecorationImage(
                  image: AssetImage(AppAssets.food1), fit: BoxFit.cover),
            ),
            // margin: EdgeInsets.only(right: 10),
            height: 120.h,
            width: 200,
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "Cheeses Pizza",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 30,
                width: 20,
                child: Image(image: AssetImage(AppAssets.vegIconImg)),
              ),
            ],
          ),
          const Text(
            "\$79.00",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    ),
  );
}

Container homeScreenPopularBrands() {
  return Container(
    // padding: EdgeInsets.all(5),
    decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            offset: const Offset(0, 0),
            blurRadius: 6,
          ),
        ],
        // image: DecorationImage(image: AssetImage(AppAssets.food1)),
        color: AppTheme.continerBackgroundColor,
        borderRadius: const BorderRadius.all(Radius.circular(20))),
    margin: const EdgeInsets.all(10),
    child: InkWell(
      onTap: () {
        Get.toNamed(MyRouter.foodDetailsScreen);
      },
      child: Column(
        children: [
          Positioned(
            top: 6,
            child: SizedBox(
              width: 170,
              child: Image.asset(
                AppAssets.popularBrandImg,
                height: 100,
                width: 100,
              ),
            ),
          ),
          addHeight(10),
          const Text(
            "Oregano Deli",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          addHeight(10),
          const Text(
            "30% off",
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: AppTheme.primaryColor),
          ),
        ],
      ),
    ),
  );
}

Container menuItemsGridViewWithAddtoCart() {
  return Container(
    padding: const EdgeInsets.all(5),
    decoration: const BoxDecoration(
        color: AppTheme.continerBackgroundColor,
        borderRadius: BorderRadius.all(Radius.circular(20))),
    margin: const EdgeInsets.only(right: 10),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
            margin: const EdgeInsets.only(right: 10),
            height: 130,
            width: 170,
            child: Image.asset(
              AppAssets.drinks_restrodetails,
              fit: BoxFit.cover,
            )),
        const SizedBox(
          height: 10,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            Text(
              "Burger",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: AppTheme.primaryColor),
            ),
            Spacer(),
            SizedBox(
              height: 30,
              width: 20,
              child: Image(image: AssetImage(AppAssets.vegIconImg)),
            ),
            SizedBox(
              width: 10,
            ),
          ],
        ),
        const Text(
          "Barbeque Nation",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 30,
              width: 30,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: AppTheme.primaryColor),
              child: FittedBox(
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.add),
                  color: AppTheme.colorWhite,
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            const Text(
              "1",
              style: TextStyle(color: AppTheme.primaryColor),
            ),
            const SizedBox(
              width: 10,
            ),
            Container(
              height: 30,
              width: 30,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: AppTheme.primaryColor),
              child: FittedBox(
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.add),
                  color: AppTheme.colorWhite,
                ),
              ),
            ),
            const Spacer(),
            const Text(
              "\$88.00",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
        const Spacer(),
        Container(
          height: 40,
          decoration: const BoxDecoration(
              color: Color(0xffF07846),
              borderRadius: BorderRadius.all(Radius.circular(10))),
          child: MaterialButton(
            onPressed: () {
              // Get.toNamed(MyRouter.verifyOTPScreen);
            },
            child: const Text(
              "   Add to Cart    ",
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),
        ),
      ],
    ),
  );
}

// Container homePopularProductListView() {
//   return Container(
//     padding: const EdgeInsets.all(5),
//     decoration: const BoxDecoration(
//         color: AppTheme.continerBackgroundColor,
//         borderRadius: BorderRadius.all(Radius.circular(20))),
//     margin: const EdgeInsets.only(right: 10),
//     child: Column(
//       mainAxisAlignment: MainAxisAlignment.start,
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Container(
//             margin: const EdgeInsets.only(right: 10),
//             height: 130,
//             width: 170,
//             child: Image.asset(
//               AppAssets.burgerImg,
//               fit: BoxFit.cover,
//             )),
//         const SizedBox(
//           height: 10,
//         ),
//         Row(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           mainAxisAlignment: MainAxisAlignment.start,
//           children: [
//             const Text(
//               "Burger",
//               style: TextStyle(
//                   fontSize: 18,
//                   fontWeight: FontWeight.bold,
//                   color: AppTheme.primaryColor),
//             ),
//             const Spacer(),
//             Container(
//               height: 30,
//               width: 20,
//               child: const Image(image: AssetImage(AppAssets.vegIconImg)),
//             ),
//             const SizedBox(
//               width: 10,
//             ),
//           ],
//         ),
//         const Text(
//           "Barbeque Nation",
//           style: TextStyle(
//             fontSize: 18,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//         const SizedBox(
//           height: 10,
//         ),
//         Row(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           mainAxisAlignment: MainAxisAlignment.start,
//           children: [
//             Container(
//               height: 30,
//               width: 30,
//               decoration: const BoxDecoration(
//                   borderRadius: BorderRadius.all(Radius.circular(10)),
//                   color: AppTheme.primaryColor),
//               child: FittedBox(
//                 child: IconButton(
//                   onPressed: () {},
//                   icon: const Icon(Icons.add),
//                   color: AppTheme.colorWhite,
//                 ),
//               ),
//             ),
//             const SizedBox(
//               width: 10,
//             ),
//             const Text(
//               "1",
//               style: TextStyle(color: AppTheme.primaryColor),
//             ),
//             const SizedBox(
//               width: 10,
//             ),
//             Container(
//               height: 30,
//               width: 30,
//               decoration: const BoxDecoration(
//                   borderRadius: BorderRadius.all(Radius.circular(10)),
//                   color: AppTheme.primaryColor),
//               child: FittedBox(
//                 child: IconButton(
//                   onPressed: () {},
//                   icon: const Icon(Icons.add),
//                   color: AppTheme.colorWhite,
//                 ),
//               ),
//             ),
//             const Spacer(),
//             const Text(
//               "\$88.00",
//               style: TextStyle(
//                 fontSize: 18,
//               ),
//             ),
//           ],
//         ),
//         const Spacer(),
//         Container(
//           height: 40,
//           decoration: const BoxDecoration(
//               color: Color(0xffF07846),
//               borderRadius: BorderRadius.all(Radius.circular(10))),
//           child: MaterialButton(
//             onPressed: () {
//               // Get.toNamed(MyRouter.verifyOTPScreen);
//             },
//             child: const Text(
//               "   Add to Cart    ",
//               style: TextStyle(color: Colors.white, fontSize: 18),
//             ),
//           ),
//         ),
//       ],
//     ),
//   );
// }
