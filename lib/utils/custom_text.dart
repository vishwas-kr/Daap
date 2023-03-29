import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:robbin_hood_google_soln/utils/app_colors.dart';

Text customStyleText({
  required String text,
  font = 'Roboto',
  Color color = AppColors.fontColor,
  double size = 16,
  TextAlign textAlign = TextAlign.start,
  int maxlines = 3,
  double letterSpacing = 0.5,
  bool isBold = false,
}) {
  return Text(
    text,
    maxLines: maxlines,
    textAlign: textAlign,
    overflow: TextOverflow.ellipsis,
    style: GoogleFonts.getFont(
      font,
      color: color,
      fontSize: size,
      letterSpacing: letterSpacing,
      fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
    ),
  );
}
