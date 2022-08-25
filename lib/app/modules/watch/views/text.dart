import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class modified_text extends StatelessWidget {
  final String text;
  final Color color;
  final double size;

  const modified_text({required this.text,required this.color,required this.size})
      ;
  @override
  Widget build(BuildContext context) {
    return Text(text, style: GoogleFonts.roboto(color: color, fontSize: size));
  }
}
