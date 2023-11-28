// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:sentiment_analysis/src/global/themes/colors.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 112,
      color: AppColors.blueColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset('assets/images/footer.png')
        ],
      ),
    );
  }
}
