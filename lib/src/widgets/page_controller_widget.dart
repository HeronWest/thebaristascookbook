import 'package:flutter/material.dart';
import 'package:thebaristascookbook/src/model/page_model.dart';
import 'package:thebaristascookbook/src/views/home/home_page.dart';

class PageControllerWidget extends StatelessWidget {
  PageControllerWidget({super.key, required this.pageNotifier});

  final PageModel pageNotifier;
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
