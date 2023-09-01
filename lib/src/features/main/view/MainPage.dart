import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:thebaristascookbook/src/features/main/controller/page_controller.dart';
import 'package:thebaristascookbook/src/features/recipe/view/new_recipe_page.dart';
import 'package:thebaristascookbook/src/widgets/appbar.dart';
import 'package:thebaristascookbook/src/widgets/drawer.dart';
import 'package:thebaristascookbook/src/widgets/filter.drawer.dart';
import 'package:thebaristascookbook/src/widgets/navbar.dart';
import 'package:thebaristascookbook/src/widgets/page_controller_widget.dart';

class MainPage extends StatelessWidget {
  MainPage({super.key});
  final PageViewController _pageNotifier = PageViewController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawer(),
      endDrawer: const CustomEndDrawerFilter(),
      appBar: CustomAppBar(pageNotifier: _pageNotifier),
      backgroundColor: const Color(0xffFFFCF4),
      body: PageControllerWidget(
        pageNotifier: _pageNotifier,
      ),
      bottomNavigationBar: NavBar(
        pageNotifier: _pageNotifier,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xff8F542E),
        elevation: 0,
        child: const Icon(
          Icons.add,
          size: 50,
        ),
        onPressed: () {
          Navigator.push(
              context,
              PageRouteBuilder(
                barrierDismissible: true,
                opaque: false,
                pageBuilder: (context, animation, secondaryAnimation) =>
                    const NewRecipePage(),
                transitionsBuilder:
                    (context, animation, secondaryAnimation, child) {
                  const begin = Offset(0.0, 1.0);
                  const end = Offset.zero;
                  const curve = Curves.ease;

                  var tween = Tween(begin: begin, end: end)
                      .chain(CurveTween(curve: curve));

                  return SlideTransition(
                    position: animation.drive(tween),
                    child: child,
                  );
                },
              ));
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
    );
  }
}
