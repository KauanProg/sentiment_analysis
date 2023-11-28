// depend_on_referenced_packages
// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:sentiment_analysis/src/global/themes/colors.dart';
import 'package:sentiment_analysis/src/global/themes/typography.dart';

class Menu extends StatelessWidget {
  final ValueChanged<int> onMenuClick;

  const Menu({super.key, required this.onMenuClick});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 72,
      color: AppColors.blueColor,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 72, vertical: 14),
        child: Row(
          children: [
            Image.asset('assets/images/logo.png'),
            const SizedBox(width: 8),
            Text('Módulo\nIbiapaba',
                style: AppTypography.fontStyleEpilogue16()),
            const Spacer(),
            TextButton(
              onPressed: () => onMenuClick(1),
              child: Text('Início', style: AppTypography.fontStyleEpilogue16()),
            ),
            TextButton(
              onPressed: () => onMenuClick(2),
              child: Text('Sobre', style: AppTypography.fontStyleEpilogue16()),
            ),
            TextButton(
              onPressed: () => onMenuClick(3),
              child: Text('Como funciona', style: AppTypography.fontStyleEpilogue16()),
            ),
            TextButton(
              onPressed: () => onMenuClick(4),
              child: Text('Etapas', style: AppTypography.fontStyleEpilogue16()),
            ),
            TextButton(
              onPressed: () => onMenuClick(5),
              child: Text('Agradecimentos', style: AppTypography.fontStyleEpilogue16()),
            ),
          ],
        ),
      ),
    );
  }
}
