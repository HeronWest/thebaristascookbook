import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:thebaristascookbook/src/features/main/view/MainPage.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => MainPage()),
          );
        },
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
          'Entrar',
          style: GoogleFonts.cormorantGaramond(fontSize: 24),
        ));
  }
}
