import 'package:flutter/material.dart';
import 'package:thebaristascookbook/src/features/main/controller/page_controller.dart';

class NavBar extends StatelessWidget {
  NavBar({super.key, required this.pageNotifier});
  final PageViewController pageNotifier;

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      elevation: 6,
      shape: const CircularNotchedRectangle(),
      notchMargin: 5, //notche margin between floating button and bottom appbar
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: IconButton(
                icon: const Icon(
                  Icons.home_outlined,
                  size: 36,
                  color: Color(0xff8F542E),
                ),
                onPressed: () => pageNotifier.page = 0,
              ),
            ),
            Expanded(
              child: IconButton(
                icon: const Icon(
                  Icons.menu_book,
                  size: 36,
                  color: Color(0xff8F542E),
                ),
                onPressed: () => pageNotifier.page = 1,
              ),
            ),
            Expanded(child: new Text('')),
            Expanded(
              child: IconButton(
                icon: const Icon(
                  Icons.person_outline,
                  size: 36,
                  color: Color(0xff8F542E),
                ),
                onPressed: () => pageNotifier.page = 2,
              ),
            ),
            Expanded(
              child: IconButton(
                icon: const Icon(
                  Icons.star_outline,
                  size: 36,
                  color: Color(0xff8F542E),
                ),
                onPressed: () => pageNotifier.page = 3,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
