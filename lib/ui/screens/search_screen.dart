import 'package:flutter/material.dart';
import 'package:woo_customer/ui/widget/bottomNavBar.dart';
import 'package:woo_customer/res/theme/theme.dart';
import 'package:woo_customer/ui/widget/bottomNavBar.dart';
import '../widget/common_items.dart';
import 'package:woo_customer/ui/widget/common_widget.dart';
import '../widget/searchBox.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final searchController = TextEditingController();
  SizedBox addHeight(double size) => SizedBox(height: size);
  SizedBox addWidth(double size) => SizedBox(width: size);
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          bottomNavigationBar: CustomBottomNavigationBar(),
          appBar: commonAppBar('Search'),
          body: Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              children: [
                addHeight(10),
                searchbox(Icons.sort),
                Container(
                  child: const TabBar(
                    indicatorSize: TabBarIndicatorSize.label,
                    indicator: UnderlineTabIndicator(
                        borderSide: BorderSide(color: AppTheme.primaryColor)),
                    labelColor: Colors.black,
                    labelStyle: TextStyle(fontSize: 22),
                    unselectedLabelColor: Colors.grey,
                    tabs: [
                      Tab(
                        text: "Restaurants",
                      ),
                      Tab(
                        text: 'Items',
                      ),
                    ],
                  ),
                ),
                Expanded(
                    child: TabBarView(
                  children: [
                    Text("Restaurants"),
                    SingleChildScrollView(
                      child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Column(children: [
                            ListView.builder(
                              itemCount: 13,
                              physics: NeverScrollableScrollPhysics(),
                              scrollDirection: Axis.vertical,
                              shrinkWrap: true,
                              itemBuilder: (context, index) {
                                return Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.2,
                                    child: SearchScreenItemsListView());
                              },
                            ),
                          ])),
                    )
                  ],
                ))
              ],
            ),
          )),
    );
  }
}
