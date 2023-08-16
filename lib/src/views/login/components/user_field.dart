import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UserField extends StatefulWidget {
  const UserField({super.key});

  @override
  State<UserField> createState() => _UserFieldState();
}

class _UserFieldState extends State<UserField> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.only(bottom: 5, top: 30),
      width: screenSize.width * 0.7,
      child: TextFormField(
        style: GoogleFonts.cormorantGaramond(
            fontSize: 24, color: Color(0xff8F542E)),
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
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
          hintText: 'Usuário',
          hintStyle: GoogleFonts.cormorantGaramond(
              fontSize: 24, color: Color(0xff8F542E)),
        ),
      ),
    );
  }
}
