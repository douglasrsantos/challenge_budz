import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:challenge_budz/core/ui/ui.dart';

class AppFonts {
  static TextStyle largeTitle = GoogleFonts.outfit(
    fontSize: 20,
    fontWeight: FontWeight.w700,
    color: AppColors.highlightedTexts,
  );

  static TextStyle subtitle = GoogleFonts.outfit(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: AppColors.secondaryTexts,
  );

  static TextStyle mediumTitle = GoogleFonts.outfit(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: AppColors.secondaryTexts,
  );

  static TextStyle smallTitle = GoogleFonts.outfit(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: AppColors.secondaryTexts,
  );

  static TextStyle articleTitle = GoogleFonts.outfit(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: Colors.white,
  );
}
