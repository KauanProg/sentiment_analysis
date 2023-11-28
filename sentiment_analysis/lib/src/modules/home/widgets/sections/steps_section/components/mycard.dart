// ignore_for_file: depend_on_referenced_packages

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:sentiment_analysis/src/global/themes/colors.dart';
import 'package:sentiment_analysis/src/global/themes/typography.dart';

class MyCard extends StatelessWidget {
  final String title;
  final String description;

  const MyCard({super.key, required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        width: 411,
        height: 226,
        padding: const EdgeInsets.all(32),
        decoration: BoxDecoration(
          color: AppColors.blueColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AutoSizeText(
              title,
              style: AppTypography.fontStyleEpilogue24(
                AppColors.neutralColorWhite,
              ),
              maxLines: 2,
            ),
            const Spacer(),
            AutoSizeText(
              description,
              style: AppTypography.fontStyleRoboto16(),
              textAlign: TextAlign.justify,
              maxLines: 4,
            ),
          ],
        ),
      ),
    );
  }
}
