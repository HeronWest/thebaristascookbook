import 'package:flutter/material.dart';
import 'package:thebaristascookbook/src/features/home/view/home_page.dart';
import 'package:thebaristascookbook/src/features/main/controller/page_controller.dart';

class PageControllerWidget extends StatelessWidget {
  PageControllerWidget({super.key, required this.pageNotifier});

  final PageViewController pageNotifier;
  final List<Widget> _pages = [
    const HomePage(),
    const Text('Receitas'),
    const Text('Perfil'),
    const Text('Favoritos'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
        listenable: pageNotifier,
        builder: (context, child) {
          return PageView(
              controller: pageNotifier.pageController,
              onPageChanged: (value) => pageNotifier.pageByScroll = value,
              children: _pages);
        });
  }
}
