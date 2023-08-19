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
        style: GoogleFonts.cormorantGaramond(
            fontSize: 24, color: const Color(0xff8F542E)),
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          suffixIcon: const Icon(Icons.visibility),
          suffixIconColor: const Color(0xff8F542E),
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
          ),
          hintText: 'Senha',
          hintStyle: GoogleFonts.cormorantGaramond(
              fontSize: 24, color: const Color(0xff8F542E)),
        ),
      ),
    );
  }
}
