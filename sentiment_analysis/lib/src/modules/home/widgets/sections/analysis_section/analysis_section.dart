import 'package:flutter/material.dart';
import 'package:sentiment_analysis/src/global/themes/typography.dart';
import 'package:sentiment_analysis/src/modules/home/widgets/sections/analysis_section/components/analysis_button.dart';
import 'package:sentiment_analysis/src/modules/home/widgets/sections/analysis_section/components/analysis_input.dart';

class AnalysisSection extends StatelessWidget {
  const AnalysisSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 72, right: 72, top: 72),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Análise de Sentimentos', style: AppTypography.fontStyleEpilogue32()),
              const SizedBox(height: 16),
              AnalysisInput(),
              const SizedBox(height: 32),
              AnalysisButton(
                title: 'adadfd',
                function: () {},
              )
            ],
          )
        ],
      ),
    );
  }
}
