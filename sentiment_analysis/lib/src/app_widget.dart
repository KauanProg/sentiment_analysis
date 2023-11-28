// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:sentiment_analysis/src/global/config/responsive/responsive_layout.dart';
import 'package:sentiment_analysis/src/modules/home/home_desktop.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ResponsiveLayout(mobile: Container(), tablet: Container(), desktop: HomeDesktop()),
    );
  }
}
