import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:thebaristascookbook/src/views/recipe/recipe_details_page.dart';

// ignore: must_be_immutable
class ItemsCaroussel extends StatelessWidget {
  ItemsCaroussel({super.key});
  // ignore: library_private_types_in_public_api
  final List<_Item> items = [
    const _Item(),
    const _Item(),
    const _Item(),
    const _Item(),
    const _Item()
  ];

  @override
  Widget build(BuildContext context) {
    // var screenSize = MediaQuery.of(context).size;
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Container(
          child: Row(
            children: [...items.map((e) => e).toList()],
          ),
        ));
  }
}

class _Item extends StatelessWidget {
  const _Item({super.key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return SizedBox(
      width: screenSize.width * 0.7,
      height: screenSize.height * 0.48,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        color: const Color(0xff291505).withOpacity(0.9),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Moccaccino Chocolate (Receita para coados)',
                style: GoogleFonts.content(color: Colors.white, fontSize: 16),
              ),
              FractionallySizedBox(
                widthFactor: 0.8,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '15 min',
                      style: GoogleFonts.content(
                          color: Colors.white.withOpacity(0.7), fontSize: 14),
                    ),
                    Text(
                      '182kcal',
                      style: GoogleFonts.content(
                          color: Colors.white.withOpacity(0.7), fontSize: 14),
                    ),
                  ],
                ),
              ),
              IconButton(
                  onPressed: () =>
                      Navigator.of(context).push(_goToRecipeDetails()),
                  icon: const Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                    size: 36,
                  )),
              Image.asset('assets/images/moca.png', fit: BoxFit.fitHeight)
            ],
          ),
        ),
      ),
    );
  }
}

Route _goToRecipeDetails() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) =>
        const RecipeDetailsPage(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(-1.0, 0.0);
      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}
