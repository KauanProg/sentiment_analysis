import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:sentiment_analysis/src/global/themes/typography.dart';

class InformationContainer extends StatelessWidget {
  final String title;
  final String description;

  const InformationContainer(
      {super.key, required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 720,
      height: 512,
      padding: const EdgeInsets.symmetric(horizontal: 72),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(title, style: AppTypography.fontStyleEpilogue32()),
          const SizedBox(height: 32),
          AutoSizeText(description, style: AppTypography.fontStyleRoboto24(), textAlign: TextAlign.justify, maxLines: 9),
        ],
      ),
    );
  }
}
