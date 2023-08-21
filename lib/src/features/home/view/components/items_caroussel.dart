import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:thebaristascookbook/src/features/recipe/view/recipe_details_page.dart';

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
        child: Padding(
          padding: const EdgeInsets.only(left: 18.0),
          child: Row(
            children: [...items.map((e) => e).toList()],
          ),
        ));
  }
}

class _Item extends StatelessWidget {
  const _Item();

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return SizedBox(
      width: screenSize.width * 0.6,
      height: screenSize.height * 0.42,
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        color: const Color(0xffFFFCF4),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              child: Image.asset(
                'assets/images/cappuccino.jpg',
                width: screenSize.width * 0.6,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(14.0),
                child: Column(
                  children: [
                    Text(
                      'Moccaccino Chocolate (Receita para coados)',
                      style: GoogleFonts.content(
                          color: Colors.black,
                          fontSize: 20 * (screenSize.width * 0.002)),
                      textAlign: TextAlign.start,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AutoSizeText(
                          '15 min',
                          style: GoogleFonts.content(
                              color: Colors.black.withOpacity(0.7),
                              fontSize: 16 * (screenSize.width * 0.002)),
                          minFontSize: 10,
                          textAlign: TextAlign.start,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: AutoSizeText(
                            '182kcal',
                            minFontSize: 10,
                            style: GoogleFonts.content(
                                color: Colors.black.withOpacity(0.7),
                                fontSize: 16 * (screenSize.width * 0.002)),
                          ),
                        ),
                      ],
                    ),
                    // Text(
                    //     'Delicie-se com a perfeita harmonia do Mocaccino, uma indulgente mistura de espresso, chocolate e leite vaporizado, coberto com chantilly e chocolate em pó.',
                    //     style: GoogleFonts.content(
                    //         color: Colors.black.withOpacity(0.7), fontSize: 14),
                    //     maxLines: 2,
                    //     softWrap: true),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.all(14.0),
                child: IconButton(
                    onPressed: () {
                      Navigator.of(context).push(_goToRecipeDetails());
                    },
                    icon: const Icon(
                      Icons.arrow_forward,
                      color: Color(0xff8F542E),
                      size: 36,
                    )),
              ),
            ),
          ],
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
