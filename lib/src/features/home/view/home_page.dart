import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:thebaristascookbook/src/features/home/view/components/items_caroussel.dart';
import 'package:thebaristascookbook/src/features/home/view/components/posts_caroussel.dart';
import 'package:thebaristascookbook/src/features/home/view/components/type_menu.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 15, bottom: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Text(
                'Descubra',
                style: GoogleFonts.cormorantGaramond(
                    color: const Color(0xff8F542E), fontSize: 36),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0, bottom: 10),
              child: TypeMenu(),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0, bottom: 20),
              child: ItemsCaroussel(),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Text(
                'Blog',
                style: GoogleFonts.cormorantGaramond(
                    color: const Color(0xff8F542E), fontSize: 36),
              ),
            ),
            PostWidget()
            // Padding(
            //   padding: const EdgeInsets.only(top: 10.0, bottom: 20),
            //   child: TypeMenu(),
            // ),
            // RecipeCardWidget(),
            // RecipeCardWidget(),
            // RecipeCardWidget()
          ],
        ),
      ),
    );
  }
}
