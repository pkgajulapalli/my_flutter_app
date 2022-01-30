import 'package:flutter/material.dart';
import 'package:my_flutter_app/helpers/responsiveness.dart';
import 'package:my_flutter_app/widgets/large_screen.dart';
import 'package:my_flutter_app/widgets/small_screen.dart';
import 'package:my_flutter_app/widgets/top_nav.dart';

class SiteLayout extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: topNavigationBar(context, scaffoldKey),
      body: ResponsiveWidget(largeScreen: LargeScreen(), smallScreen: SmallScreen(),)
    );
  }
}
