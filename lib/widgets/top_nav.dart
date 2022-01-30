import 'package:flutter/material.dart';
import 'package:my_flutter_app/helpers/responsiveness.dart';

AppBar topNavigationBar(BuildContext context, GlobalKey<ScaffoldState> key) =>
    AppBar(
      leading: !ResponsiveWidget.isSmallScreen(context) ?
      Row(
        children: [
          Container(
            padding: EdgeInsets.only(left: 14),
            child: Image.asset("icons/logo.png", width: 28,),
          )
        ],
      ) : IconButton(onPressed: () {
        key.currentState?.openDrawer();
      }, icon: Icon(Icons.menu)),
      elevation: 0,
    );