// ignore_for_file: use_super_parameters, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:sentiment_analysis/src/global/themes/typography.dart';
import 'package:sentiment_analysis/src/modules/home/widgets/sections/analysis_section/components/analysis_button.dart';
import 'package:sentiment_analysis/src/modules/home/widgets/sections/analysis_section/components/analysis_input.dart';

class AnalysisSection extends StatefulWidget {
  AnalysisSection({Key? key}) : super(key: key);

  @override
  State<AnalysisSection> createState() => _AnalysisSectionState();
}

class _AnalysisSectionState extends State<AnalysisSection> {
  bool isAnalysis = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 72, right: 72, top: 72),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Análise de Sentimentos',
                style: AppTypography.fontStyleEpilogue32(),
              ),
              const SizedBox(height: 16),
              AnalysisInput(),
              const SizedBox(height: 32),
              AnalysisButton(
                title: 'Analisar',
                function: () {
                  setState(() {
                    isAnalysis = true;
                  });
                },
              )
            ],
          ),
          Builder(
            builder: (BuildContext context) {
              if (isAnalysis) {
                return Text(AnalysisInput.analysisController.text);
              } else {
                return Container();
              }
            },
          ),
        ],
      ),
    );
  }
}
