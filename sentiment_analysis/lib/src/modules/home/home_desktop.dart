// ignore_for_file: prefer_const_constructors, unused_local_variable

import 'package:flutter/material.dart';
import 'package:sentiment_analysis/src/global/themes/colors.dart';

import 'widgets/footer/footer.dart';
import 'widgets/menu/menu.dart';
import 'widgets/sections/about_section/about_section.dart';
import 'widgets/sections/analysis_section/analysis_section.dart';
import 'widgets/sections/steps_section/steps_section.dart';
import 'widgets/sections/team_section/team_section.dart';
import 'widgets/sections/thanks_section/thanks_section.dart';
import 'widgets/sections/works_section/works_section.dart';

class HomeDesktop extends StatefulWidget {
  const HomeDesktop({super.key});

  @override
  State<HomeDesktop> createState() => _HomeDesktopState();
}

class _HomeDesktopState extends State<HomeDesktop> {
  final ScrollController scrollController = ScrollController();

  final GlobalKey keyMenu = GlobalKey();
  final GlobalKey keyAnalysisSection = GlobalKey();
  final GlobalKey keyAbout = GlobalKey();
  final GlobalKey keyWorksSection = GlobalKey();
  final GlobalKey keyStepsSection = GlobalKey();
  final GlobalKey keyThanksSection = GlobalKey();

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.greyColor,
      body: SingleChildScrollView(
        controller: scrollController,
        child: Column(
          children: [
            Menu(onMenuClick: _onMenuClick, key: keyMenu),
            AnalysisSection(key: keyAnalysisSection),
            AboutSection(key: keyAbout),
            WorksSection(key: keyWorksSection),
            StepsSection(key: keyStepsSection),
            ThanksSection(key: keyThanksSection),
            TeamSection(),
            Footer(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _onMenuClick(0),
        backgroundColor: AppColors.blueColor,
        shape: CircleBorder(),
        child: Icon(Icons.home, color: AppColors.neutralColorWhite),
      ),
    );
  }

  void _onMenuClick(int value) {
    RenderBox? renderBox;

    switch (value) {
      case 0:
        renderBox = keyMenu.currentContext?.findRenderObject() as RenderBox?;
        break;
      case 1:
        renderBox = keyAnalysisSection.currentContext?.findRenderObject() as RenderBox?;
        break;
      case 2:
        renderBox = keyAbout.currentContext?.findRenderObject() as RenderBox?;
        break;
      case 3:
        renderBox = keyWorksSection.currentContext?.findRenderObject() as RenderBox?;
        break;
      case 4:
        renderBox = keyStepsSection.currentContext?.findRenderObject() as RenderBox?;
        break;
      case 5:
        renderBox = keyThanksSection.currentContext?.findRenderObject() as RenderBox?;
        break;
      default:
        break;
    }

    if (renderBox != null && scrollController.hasClients) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        final offset = renderBox!.localToGlobal(Offset.zero);

        scrollController.animateTo(
          offset.dy,
          duration: Duration(milliseconds: 500),
          curve: Curves.easeInOut,
        );
      });
    }
  }
}
