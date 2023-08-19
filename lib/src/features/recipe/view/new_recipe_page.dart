import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:thebaristascookbook/src/features/recipe/view/components/customed_tabbar.dart';
import 'package:thebaristascookbook/src/features/recipe/view/components/sub-view/title_view.dart';
import 'package:thebaristascookbook/src/features/recipe/view/controllers/new_recipe_page_controller.dart';

class NewRecipePage extends StatelessWidget {
  NewRecipePage({super.key});

  final NewRecipePageController _controller = NewRecipePageController();

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          leading: Container(),
          elevation: 0,
          backgroundColor: Colors.transparent,
          toolbarHeight: 10,
        ),
        body: FractionallySizedBox(
          widthFactor: 1,
          heightFactor: 1,
          child: Container(
            decoration: BoxDecoration(
                border: Border.all(color: const Color(0xff8F542E)),
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30))),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: () => Navigator.of(context).pop(),
                        child: Text(
                          'Cancelar',
                          style: GoogleFonts.content(
                              color: const Color(0xff8F542E), fontSize: 18),
                        ),
                      ),
                      TextButton(
                        onPressed: () => Navigator.of(context).pop(),
                        child: Text(
                          'Salvar',
                          style: GoogleFonts.content(
                              color: const Color(0xff8F542E), fontSize: 18),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: CustomTabBar(controller: _controller),
                  ),
                  ValueListenableBuilder(
                    valueListenable: _controller,
                    builder: (context, value, child) {
                      switch (value) {
                        case (0):
                          return Expanded(
                              child: SizedBox(
                                  width: screenSize.width, child: const TitleView()));
                        case (1):
                          return const Text('Ingredientes');
                        case (2):
                          return const Text('Modo de Preparo');
                        default:
                          return const Text('Erro');
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
