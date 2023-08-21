import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class FieldWidget extends StatelessWidget {
  FieldWidget(
      {super.key,
      required this.width,
      required this.hintText,
      required this.prefixIcon,
      this.obscureText = false,
      this.inputFormatters,
      this.keyboardType});

  double width;
  String hintText;
  IconData prefixIcon;
  bool obscureText = false;
  List<TextInputFormatter>? inputFormatters = [];
  TextInputType? keyboardType;

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.only(bottom: 15, top: 2),
      width: screenSize.width * 0.7,
      child: TextFormField(
          inputFormatters: inputFormatters,
          keyboardType: keyboardType,
          obscureText: obscureText,
          style: GoogleFonts.cormorantGaramond(
              fontSize: 24, color: const Color(0xff8F542E)),
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.transparent,
            border: const UnderlineInputBorder(
              borderSide: BorderSide(color: Color(0xff8F542E), width: 1),
            ),
            enabledBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: Color(0xff8F542E), width: 1),
            ),
            focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: Color(0xff8F542E), width: 1),
            ),
            hintText: hintText,
            hintStyle: GoogleFonts.cormorantGaramond(
                fontSize: 22, color: const Color(0xff8F542E).withOpacity(0.6)),
            prefixIcon: Icon(
              prefixIcon,
              color: const Color(0xff8F542E).withOpacity(0.6),
            ),
          )),
    );
  }
}
