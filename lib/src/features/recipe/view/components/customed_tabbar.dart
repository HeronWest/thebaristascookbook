// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:thebaristascookbook/src/features/recipe/view/controllers/new_recipe_page_controller.dart';

class CustomTabBar extends StatefulWidget {
  CustomTabBar({super.key, required this.controller});

  NewRecipePageController controller;

  @override
  State<CustomTabBar> createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar>
    with SingleTickerProviderStateMixin {
  List<Widget> tabs = [
    const Tab(
      icon: Text('Título'),
    ),
    Tab(
      icon: Text('Ingredientes',
          style: GoogleFonts.content(
              fontSize: 18, color: const Color(0xff8F542E))),
    ),
    const Tab(icon: Text('Preparo')),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        key: GlobalKey(),
        initialIndex: widget.controller.value,
        length: tabs.length,
        child: Container(
          decoration: BoxDecoration(
              color: const Color(0xff8F542E).withOpacity(0.3),
              borderRadius: const BorderRadius.all(Radius.circular(30))),
          child: ValueListenableBuilder(
              valueListenable: widget.controller,
              builder: (context, value, child) {
                return TabBar(
                  tabs: tabs,
                  indicatorColor: Colors.transparent,
                  indicator: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: const Color(0xff8F542E), width: 2),
                  ),
                  labelColor: const Color(0xff8F542E),
                  labelStyle: GoogleFonts.content(
                      fontSize: 16,
                      color: const Color(0xff8F542E),
                      fontWeight: FontWeight.bold),
                  // unselectedLabelColor: Color(0xff8F542E).withOpacity(0.3),
                );
              }),
        )
        );
  }
}
