import 'package:flutter/material.dart';

/// Refer to https://gs.statcounter.com/screen-resolution-stats to more details on most used screen sizes
const int largeScreenSize = 1366;
const int mediumScreenSize = 720;
const int smallScreenSize = 414;
const int customScreenSize = 1536;

class ResponsiveWidget extends StatelessWidget {
  final Widget largeScreen;
  // final Widget mediumScreen;
  final Widget smallScreen;

  const ResponsiveWidget(
      {Key? key,
      required this.largeScreen,
      // required this.mediumScreen,
      required this.smallScreen})
      : super(key: key);

  static bool isSmallScreen(BuildContext context) =>
      MediaQuery.of(context).size.width < largeScreenSize;

  static bool isMediumScreen(BuildContext context) =>
      MediaQuery.of(context).size.width >= mediumScreenSize &&
          MediaQuery.of(context).size.width < largeScreenSize;

  static bool isLargeScreen(BuildContext context) =>
      MediaQuery.of(context).size.width >= largeScreenSize;

  static bool isCustomScreen(BuildContext context) =>
      MediaQuery.of(context).size.width >= mediumScreenSize &&
          MediaQuery.of(context).size.width <= customScreenSize;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      {
        double _width = constraints.maxWidth;
        if (_width >= largeScreenSize) {
          return largeScreen;
        // } else if (_width >= mediumScreenSize) {
        //   return mediumScreen;
        } else {
          return smallScreen;
        }
      }
    });
  }
}
