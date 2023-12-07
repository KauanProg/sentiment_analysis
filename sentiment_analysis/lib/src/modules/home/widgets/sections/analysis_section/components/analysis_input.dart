// ignore_for_file: depend_on_referenced_packages, must_be_immutable

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sentiment_analysis/src/global/themes/colors.dart';

class AnalysisInput extends StatelessWidget {
  final InputBorder borderStyle = OutlineInputBorder(
    borderSide: const BorderSide(color: AppColors.blueColor),
    borderRadius: BorderRadius.circular(8),
  );

  AnalysisInput({super.key});

  static TextEditingController analysisController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 576,
      child: TextFormField(
        maxLines: 9,
        buildCounter: (context, {required currentLength, required isFocused, maxLength}) => null,
        controller: analysisController,
        cursorColor: AppColors.blueColor,
        decoration: InputDecoration(
          hintText: 'Digite um texto...',
          hintStyle: GoogleFonts.roboto(
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
          border: borderStyle,
          focusedBorder: borderStyle,
          enabledBorder: borderStyle,
        ),
      ),
    );
  }
}
