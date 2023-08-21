import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:thebaristascookbook/src/features/recipe/view/recipe_details_page.dart';

class RecipeCardWidget extends StatelessWidget {
  const RecipeCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return SizedBox(
        width: screenSize.width * 0.94,
        height: screenSize.height * 0.15,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Card(
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              color: const Color(0xffFFFCF4),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RecipeDetailsPage()),
                  );
                },
                child: Row(
                  children: [
                    Expanded(
                        child: ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      child: Image.asset(
                        'assets/images/cappuccino.jpg',
                        fit: BoxFit.fitHeight,
                        height: screenSize.height * 0.15,
                      ),
                    )),
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Cappuccino',
                                style: GoogleFonts.content(fontSize: 20),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('15 min',
                                      style: GoogleFonts.content(
                                          color: Colors.black, fontSize: 16)),
                                  Text('182kcal',
                                      style: GoogleFonts.content(
                                          color: Colors.black, fontSize: 16))
                                ],
                              ),
                              Expanded(
                                child: Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 8.0),
                                  child: Text(
                                    'Delicie-se com a perfeita harmonia do Mocaccino, uma indulgente mistura de espresso, chocolate e leite vaporizado, coberto com chantilly e chocolate em pó.',
                                    style: GoogleFonts.content(fontSize: 14),
                                    overflow: TextOverflow.fade,
                                    softWrap: true,
                                  ),
                                ),
                              )
                            ]),
                      ),
                    ),
                  ],
                ),
              )),
        ));
  }
}
