import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomedTextField extends StatelessWidget {
  CustomedTextField({super.key, this.maxLines = 1});
  int maxLines = 1;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        style: GoogleFonts.content(fontSize: 14),
        cursorColor: Color(0xff8F542E),
        maxLines: maxLines,
        decoration: InputDecoration(
            contentPadding:
                const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: const BorderSide(color: Color(0xff8F542E), width: 1),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: const BorderSide(color: Color(0xff8F542E), width: 1),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: const BorderSide(color: Color(0xff8F542E), width: 1),
            )));
  }
}
