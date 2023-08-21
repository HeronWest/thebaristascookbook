import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterButton extends StatelessWidget {
  const RegisterButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
        style: const ButtonStyle(
          elevation: MaterialStatePropertyAll<double>(5),
          backgroundColor: MaterialStatePropertyAll<Color>(
            Color(0xff8F542E),
          ),
          shape: MaterialStatePropertyAll(RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(15)),
          )),
        ),
        child: Text(
          'Registrar',
          style: GoogleFonts.cormorantGaramond(fontSize: 24),
        ));
  }
}
