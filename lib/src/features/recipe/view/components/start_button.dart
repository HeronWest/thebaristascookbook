import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartButton extends StatelessWidget {
  const StartButton({super.key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(bottom: 15.0),
      child: SizedBox(
        width: screenSize.width * 0.4,
        child: ElevatedButton(
          onPressed: () {},
          style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll<Color>(
                Color(0xff8F542E),
              ),
              shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(30)),
              ))),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Começar',
              style: GoogleFonts.cormorantGaramond(
                  fontSize: 24, fontWeight: FontWeight.w400),
            ),
          ),
        ),
      ),
    );
  }
}
