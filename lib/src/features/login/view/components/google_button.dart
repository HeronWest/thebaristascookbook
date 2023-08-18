import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginGoogleButton extends StatelessWidget {
  const LoginGoogleButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
        style: const ButtonStyle(
          elevation: MaterialStatePropertyAll<double>(5),
          backgroundColor: MaterialStatePropertyAll<Color>(
            const Color(0xffFFFCF4),
          ),
          shape: MaterialStatePropertyAll(RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(15)),
          )),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              'assets/images/google-icon.png',
              width: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(
                'Continuar com o Google',
                style: GoogleFonts.cormorantGaramond(
                    fontSize: 20, color: const Color(0xff8F542E)),
              ),
            ),
          ],
        ));
  }
}
