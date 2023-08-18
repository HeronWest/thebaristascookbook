import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:thebaristascookbook/src/features/recipe/view/controllers/new_recipe_page_controller.dart';

class CustomTabBar extends StatefulWidget {
  CustomTabBar({super.key, required this.controller});

  NewRecipePageController controller;

  @override
  State<CustomTabBar> createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Color(0xff8F542E).withOpacity(0.3),
          borderRadius: BorderRadius.circular(30)),
      height: 40,
      child: ValueListenableBuilder(
        builder: (BuildContext context, value, Widget? child) => Row(
          children: [
            Expanded(
                child: InkWell(
              onTap: () => widget.controller.value = 0,
              child: Container(
                alignment: Alignment.center,
                height: 40,
                decoration: BoxDecoration(
                  color: widget.controller.value == 0
                      ? Colors.white
                      : Colors.transparent,
                  border: Border.all(
                      color: widget.controller.value == 0
                          ? Color(0xff8F542E)
                          : Colors.transparent,
                      width: 2),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Text(
                  'Título',
                  style: GoogleFonts.content(
                      color: Color(0xff8F542E),
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                  textAlign: TextAlign.center,
                ),
              ),
            )),
            Expanded(
                child: InkWell(
              onTap: () => widget.controller.value = 1,
              child: Container(
                alignment: Alignment.center,
                height: 40,
                decoration: BoxDecoration(
                  color: widget.controller.value == 1
                      ? Colors.white
                      : Colors.transparent,
                  border: Border.all(
                      color: widget.controller.value == 1
                          ? Color(0xff8F542E)
                          : Colors.transparent,
                      width: 2),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Text(
                  'Ingredientes',
                  style: GoogleFonts.content(
                      color: Color(0xff8F542E),
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                  textAlign: TextAlign.center,
                ),
              ),
            )),
            Expanded(
                child: InkWell(
              onTap: () => widget.controller.value = 2,
              child: Container(
                alignment: Alignment.center,
                height: 40,
                decoration: BoxDecoration(
                  color: widget.controller.value == 2
                      ? Colors.white
                      : Colors.transparent,
                  border: Border.all(
                      color: widget.controller.value == 2
                          ? Color(0xff8F542E)
                          : Colors.transparent,
                      width: 2),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Text(
                  'Preaparo',
                  style: GoogleFonts.content(
                      color: Color(0xff8F542E),
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                  textAlign: TextAlign.center,
                ),
              ),
            )),
          ],
        ),
        valueListenable: widget.controller,
      ),
    );
  }
}
