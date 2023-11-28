// ignore_for_file: non_constant_identifier_names, unused_local_variable, depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:sentiment_analysis/src/global/themes/colors.dart';
import 'package:sentiment_analysis/src/global/themes/typography.dart';

class AnalysisButton extends StatefulWidget {
  final String? title;
  final Function()? function;

  const AnalysisButton({
    super.key,
    required this.title,
    required this.function,
  });

  @override
  State<AnalysisButton> createState() => _ButtomState();
}

class _ButtomState extends State<AnalysisButton> {
  bool isButtonHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          isButtonHovered = true;
        });
      },
      onExit: (_) {
        setState(() {
          isButtonHovered = false;
        });
      },
      child: InkWell(
        onTap: (){},
        child: Ink(
          width: 576,
          height: 56,
          decoration: BoxDecoration(
            color: AppColors.blueColor,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Center(child: Text('Analisar', style: AppTypography.fontStyleRoboto20())),
        ),
      ),
    );
  }
}
