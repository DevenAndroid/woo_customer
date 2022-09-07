import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:woo_customer/res/size_config.dart';
import 'package:woo_customer/ui/widget/common_button.dart';
import 'package:woo_customer/ui/widget/common_widget.dart';
import 'package:woo_customer/ui/widget/common_widgets.dart';

import '../../models/food_model.dart';
import '../../res/app_assets.dart';
import '../../res/theme/theme.dart';
import '../../routers/my_router.dart';
import '../widget/bottomNavBar.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({Key? key}) : super(key: key);

  @override
  _FavouriteScreenState createState() => _FavouriteScreenState();
}

// now we will build profile Screen
class _FavouriteScreenState extends State<FavouriteScreen> {
  static const kTextGrayColor = Color(0xff262626);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: commonAppBar("Favourites"),
      bottomNavigationBar: const CustomBottomNavigationBar(),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
        child: ListView(
          children: [
            ListView.builder(
                //use shrink wrap true and scrollphysics to avoid error because we are using listview in side listview or column
                shrinkWrap: true,
                physics: const ScrollPhysics(),
                itemCount: 13,
                itemBuilder: (context, index) => FavouriteCard(
                      product: foodProducts[index],
                      press: () {},
                    ))
          ],
        ),
      )),
    );
  }
}

class FavouriteCard extends StatelessWidget {
  const FavouriteCard({
    Key? key,
    required this.product,
    required this.press,
  }) : super(key: key);
  final Product product;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: InkWell(
          onTap: press,
          child: Container(
            decoration: const BoxDecoration(
                color: AppTheme.continerBackgroundColor,
                borderRadius: BorderRadius.all(Radius.circular(20))),
            height: 185,
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(product.image),
                        fit: BoxFit.cover,
                      ),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(20))),
                  width: 150,
                ),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          product.title,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Container(
                            alignment: Alignment.topRight,
                            height: 20,
                            width: 40,
                            child: Image.asset(AppAssets.vegIconImg)),
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      "\$" + product.price.toString(),
                      style: const TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const Text(
                      "Fast Food, North Indian",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Container(
                      height: 25,
                      child: FittedBox(child: addRemoveBtn()),
                    ),
                    Container(
                        height: 65,
                        width: 170,
                        child: FittedBox(
                            child: Container(
                          alignment: Alignment.center,
                          padding: const EdgeInsets.all(20),
                          child: Material(
                            elevation: 5,
                            borderRadius: BorderRadius.circular(14),
                            color: AppTheme.primaryColor,
                            child: MaterialButton(
                              minWidth: 180,
                              height: 50,
                              onPressed: () {
                                addRemoveBtn();
                              }, // add this here
                              child: Text("Add",
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(fontSize: 18).copyWith(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600)),
                            ),
                          ),
                        )))
                  ],
                ),
              ],
            ),
          )),
    );
  }
}
