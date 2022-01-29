import 'package:flutter/material.dart';
import 'package:my_flutter_app/helpers/responsiveness.dart';
import 'package:my_flutter_app/widgets/large_screen.dart';
import 'package:my_flutter_app/widgets/small_screen.dart';

class SiteLayout extends StatelessWidget {
  const SiteLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: ResponsiveWidget(largeScreen: LargeScreen(), smallScreen: SmallScreen(),)
    );
  }
}
