import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PasswordField extends StatefulWidget {
  const PasswordField({super.key});

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.only(bottom: 15, top: 2),
      width: screenSize.width * 0.7,
      child: TextFormField(
          obscureText: true,
          style: GoogleFonts.cormorantGaramond(
              fontSize: 24, color: const Color(0xff8F542E)),
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.transparent,
            border: const UnderlineInputBorder(
              borderSide: BorderSide(color: Color(0xff8F542E), width: 1),
            ),
            enabledBorder: UnderlineInputBorder(
              borderSide: const BorderSide(color: Color(0xff8F542E), width: 1),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: const BorderSide(color: Color(0xff8F542E), width: 1),
            ),
            hintText: 'Senha',
            hintStyle: GoogleFonts.cormorantGaramond(
                fontSize: 22, color: const Color(0xff8F542E).withOpacity(0.6)),
            prefixIcon: Icon(
              Icons.key,
              color: const Color(0xff8F542E).withOpacity(0.6),
            ),
          )),
    );
  }
}
