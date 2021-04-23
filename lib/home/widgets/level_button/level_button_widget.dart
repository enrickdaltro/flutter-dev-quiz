import 'package:dev_quiz/core/core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LevelButtonWidget extends StatelessWidget {
  final String label;

  LevelButtonWidget({Key? key, required this.label})
      : assert(['Fácil', 'Médio', 'Difícil', 'Perito'].contains(label)),
        super(key: key);

  final styleConfig = {
    "Fácil": {
      "color": AppColors.levelButtonFacil,
      "borderColor": AppColors.levelButtonBorderFacil,
      "fontColor": AppColors.levelButtonTextFacil,
    },
    "Médio": {
      "color": AppColors.levelButtonMedio,
      "borderColor": AppColors.levelButtonBorderMedio,
      "fontColor": AppColors.levelButtonTextMedio,
    },
    "Difícil": {
      "color": AppColors.levelButtonDificil,
      "borderColor": AppColors.levelButtonBorderDificil,
      "fontColor": AppColors.levelButtonTextDificil,
    },
    "Perito": {
      "color": AppColors.levelButtonPerito,
      "borderColor": AppColors.levelButtonBorderPerito,
      "fontColor": AppColors.levelButtonTextPerito,
    },
  };

  Color get color => styleConfig[label]!['color']!;
  Color get borderColor => styleConfig[label]!['borderColor']!;
  Color get fontColor => styleConfig[label]!['fontColor']!;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(28),
          color: color,
          border: Border.fromBorderSide(BorderSide(color: borderColor))),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 6.0, horizontal: 26.0),
        child: Text(label,
            style: GoogleFonts.notoSans(color: fontColor, fontSize: 13)),
      ),
    );
  }
}
