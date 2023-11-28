
// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:sentiment_analysis/src/global/themes/colors.dart';
import 'package:sentiment_analysis/src/global/themes/typography.dart';

class TeamSection extends StatelessWidget {
  TeamSection({super.key});

  List<String> names = [
    'Luis Antonio',
    'Anne Mikaelly',
    'Pedro Henrique',
    'Joana Ranikelly',
    'Kauan Deyvid',
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 512,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('Equipe', style: AppTypography.fontStyleEpilogue32()),
          const SizedBox(height: 56),
          Expanded(
            child: ListView.separated(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (context, index) => Column(
                children: [
                  const CircleAvatar(
                    radius: 100,
                    backgroundColor: Colors.grey,
                  ),
                  const SizedBox(height: 24),
                  Text(names[index], style: AppTypography.fontStyleEpilogue24(AppColors.neutralColorBlack))
                ],
              ),
              separatorBuilder: (context, index) => const SizedBox(width: 48),
            ),
          ),
        ],
      ),
    );
  }
}
