import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:thebaristascookbook/src/features/home/view/components/items_caroussel.dart';
import 'package:thebaristascookbook/src/features/home/view/components/subtype_menu.dart';
import 'package:thebaristascookbook/src/features/home/view/components/type_menu.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 18.0, top: 15, bottom: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Descubra',
              style: GoogleFonts.cormorantGaramond(
                  color: const Color(0xff8F542E), fontSize: 42),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30.0, bottom: 20),
              child: TypeMenu(),
            ),
            ItemsCaroussel(),
            SubTypeMenu()
          ],
        ),
      ),
    );
  }
}
