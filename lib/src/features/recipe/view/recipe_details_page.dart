import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:thebaristascookbook/src/features/recipe/view/components/ingredients.dart';
import 'package:thebaristascookbook/src/features/recipe/view/components/portion_widget.dart';
import 'package:thebaristascookbook/src/features/recipe/view/components/start_button.dart';
import 'package:thebaristascookbook/src/features/recipe/view/components/steps.dart';

class RecipeDetailsPage extends StatefulWidget {
  const RecipeDetailsPage({super.key});

  @override
  State<RecipeDetailsPage> createState() => _RecipeDetailsPageState();
}

class _RecipeDetailsPageState extends State<RecipeDetailsPage> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        elevation: 0,
        backgroundColor: const Color(0xff291505).withOpacity(0.9),
        iconTheme: const IconThemeData(color: Colors.white, size: 36),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.share_outlined,
              size: 36,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.favorite_border,
              size: 36,
            ),
          ),
        ],
      ),
      backgroundColor: const Color(0xff291505).withOpacity(0.9),
      body: Stack(
        children: [
          Image.asset(
            'assets/images/moca.png',
            fit: BoxFit.fill,
          ),
          Stack(
            alignment: AlignmentDirectional.bottomCenter,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: screenSize.height * 0.75,
                    decoration: const BoxDecoration(
                      color: Color(0xffFFFCF4),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(45),
                        topRight: Radius.circular(45),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(40.0),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Moccaccino Chocolate (Receita para Coados)',
                              style: GoogleFonts.content(
                                  fontSize: 24,
                                  color: const Color(0xff8F542E),
                                  fontWeight: FontWeight.w600,
                                  height: 1.25),
                              maxLines: 2,
                              textAlign: TextAlign.start,
                            ),
                            const PortionWidget(),
                            Padding(
                              padding: const EdgeInsets.only(top: 24.0),
                              child: Text(
                                'Ingredientes',
                                style: GoogleFonts.cormorantGaramond(
                                    color: const Color(0xff8F542E), fontSize: 28),
                              ),
                            ),
                            IngredientsWidget(),
                            Padding(
                              padding: const EdgeInsets.only(top: 24.0),
                              child: Text(
                                'Modo de Preparo',
                                style: GoogleFonts.cormorantGaramond(
                                    color: const Color(0xff8F542E), fontSize: 28),
                              ),
                            ),
                            const PrepareSteps()
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const StartButton(),
            ],
          ),
        ],
      ),
    );
  }
}
