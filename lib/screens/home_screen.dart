import 'package:flutter/material.dart';
import 'package:xtendly/constraints.dart';
import 'package:xtendly/screens/desktop_layout.dart';
import 'package:xtendly/screens/mobile_layout.dart';
import 'package:xtendly/screens/responsive.dart';
import 'package:xtendly/screens/tablet_layout.dart';
import 'package:xtendly/widgets/navbar/navbar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: ResponsiveLayout(
        mobileLayout: const MobileLayout(),
        tabletLayout: const TabletLayout(),
        desktopLayout: const DesktopLayout(),
      ),
    );
  }
}
