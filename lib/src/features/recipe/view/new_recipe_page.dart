import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:thebaristascookbook/src/features/recipe/view/components/sub-view/title_view.dart';
import 'package:thebaristascookbook/src/features/recipe/view/controllers/new_recipe_page_controller.dart';

class NewRecipePage extends StatefulWidget {
  const NewRecipePage({super.key});

  @override
  State<NewRecipePage> createState() => _NewRecipePageState();
}

class _NewRecipePageState extends State<NewRecipePage> {
  final NewRecipePageController _controller = NewRecipePageController();

  List<Widget> tabs = [
    const Tab(
      icon: Text('Título'),
    ),
    const Tab(
      icon: Text(
        'Ingredientes',
      ),
    ),
    const Tab(icon: Text('Preparo')),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: _controller.value,
      length: tabs.length,
      child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            leading: Container(),
            elevation: 0,
            backgroundColor: Colors.transparent,
            toolbarHeight: 10,
          ),
          body: GestureDetector(
            onVerticalDragUpdate: (details) {
              int sensitivity = 8;
              if (details.delta.dy > sensitivity) {
                Navigator.of(context).pop();
              } else if (details.delta.dy < -sensitivity) {
                // Up Swipe
              }
            },
            child: FractionallySizedBox(
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
                  child: ValueListenableBuilder(
                      valueListenable: _controller,
                      builder: (context, value, child) {
                        return Column(
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
                              child: Container(
                                decoration: BoxDecoration(
                                    color: const Color(0xff8F542E).withOpacity(0.3),
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(30))),
                                child: TabBar(
                                  tabs: tabs,
                                  indicatorColor: Colors.transparent,
                                  indicator: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(30),
                                    border: Border.all(
                                        color: const Color(0xff8F542E), width: 2),
                                  ),
                                  labelColor: const Color(0xff8F542E),
                                  labelStyle: GoogleFonts.content(
                                      fontSize: 16,
                                      color: const Color(0xff8F542E),
                                      fontWeight: FontWeight.bold),
                                  // unselectedLabelColor: Color(0xff8F542E).withOpacity(0.3),
                                ),
                              ),
                            ),
                            const Expanded(
                              child: TabBarView(children: [
                                TitleView(),
                                Text('Ingredientes'),
                                Text('Preparo'),
                              ]),
                            ),
                          ],
                        );
                      }),
                ),
              ),
            ),
          )),
    );
  }
}
