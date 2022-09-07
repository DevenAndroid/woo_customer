import 'package:flutter/material.dart';   import 'package:woo_customer/ui/widget/bottomNavBar.dart';
import 'package:woo_customer/res/app_assets.dart';
import 'package:woo_customer/res/theme/theme.dart';

class ProfileAvatarWidget extends StatelessWidget {
  ProfileAvatarWidget();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 30),
      decoration: BoxDecoration(
        color: Theme.of(context).accentColor,
        borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(30), bottomRight: Radius.circular(30)),
      ),
      child: Column(
        children: <Widget>[
          Container(
            height: 160,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
//              SizedBox(
//                width: 50,
//                height: 50,
//                child: FlatButton(
//                  padding: EdgeInsets.all(0),
//                  onPressed: () {},
//                  child: Icon(Icons.add, color: Theme.of(context).primaryColor),
//                  color: Theme.of(context).accentColor,
//                  shape: StadiumBorder(),
//                ),
//              ),
                ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(300)),
                    child: Image.asset(
                      AppAssets.girlmgRound,
                      fit: BoxFit.cover,
                      height: 135,
                      width: 135,
                    )),
//              SizedBox(
//                width: 50,
//                height: 50,
//                child: FlatButton(
//                  padding: EdgeInsets.all(0),
//                  onPressed: () {},
//                  child: Icon(Icons.chat, color: Theme.of(context).primaryColor),
//                  color: Theme.of(context).accentColor,
//                  shape: StadiumBorder(),
//                ),
//              ),
              ],
            ),
          ),
          Text(
            "Nita Ambani",
            style: Theme.of(context)
                .textTheme
                .headline5!
                .merge(const TextStyle(color: AppTheme.colorWhite)),
          ),
          Text(
            "123 Eoxys It Jaipur",
            style: Theme.of(context)
                .textTheme
                .caption!
                .merge(const TextStyle(color: AppTheme.colorWhite)),
          ),
        ],
      ),
    );
  }
}

class User {}
