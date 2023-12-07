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

  List<String> pathImages = [
    'assets/images/Franklin.jpg',
    'assets/images/Mikaelly.jpg',
    'assets/images/Pedro.jpg',
    'assets/images/Joana.jpg',
    'assets/images/Kauan.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var width = size.width;
    var height = size.height;

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
                  Flexible(
                    child: ClipOval(
                      child: Image.asset(
                        pathImages[index],
                        width: width * 0.14,
                        height: height * 0.20,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(height: height * 0.024),
                  Text(
                    names[index],
                    style: AppTypography.fontStyleEpilogue24(
                      AppColors.neutralColorBlack,
                    ),
                  )
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
