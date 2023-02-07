import 'package:flutter/material.dart';
import 'package:xtendly/constraints.dart';

class ResponsiveWidget extends StatelessWidget {
  final Widget desktopScreen;
  final Widget tabletScreen;
  final Widget phoneScreen;

  const ResponsiveWidget(
      {super.key,
      required this.desktopScreen,
      required this.tabletScreen,
      required this.phoneScreen});

  static bool isPhoneScreen(BuildContext context) {
    return MediaQuery.of(context).size.width < 800;
  }

  static bool isDesktopScreen(BuildContext context) {
    return MediaQuery.of(context).size.width > 1700;
  }

  static bool isTabletScreen(BuildContext context) {
    return MediaQuery.of(context).size.width >= 800 &&
        MediaQuery.of(context).size.width <= 1700;
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileLayout;
  final Widget desktopLayout;
  final Widget tabletLayout;
  const ResponsiveLayout(
      {super.key,
      required this.mobileLayout,
      required this.desktopLayout,
      required this.tabletLayout});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < tabletWidth) {
        return mobileLayout;
      }
      if (constraints.maxWidth >= tabletWidth &&
          constraints.maxWidth < desktopWidth) {
        return tabletLayout;
      } else {
        return desktopLayout;
      }
    });
  }
}
