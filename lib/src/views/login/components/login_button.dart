import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:thebaristascookbook/src/views/MainPage.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => MainPage()),
          );
        },
        child: Text(
          'Entrar',
          style: GoogleFonts.cormorantGaramond(fontSize: 24),
        ),
        style: const ButtonStyle(
          backgroundColor: MaterialStatePropertyAll<Color>(
            Color(0xff8F542E),
          ),
          shape: MaterialStatePropertyAll(RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(15)),
          )),
        ));
  }
}
