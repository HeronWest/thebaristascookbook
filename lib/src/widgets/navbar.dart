import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      elevation: 6,
      shape: CircularNotchedRectangle(),
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
                onPressed: () {},
              ),
            ),
            Expanded(
              child: IconButton(
                icon: const Icon(
                  Icons.menu_book,
                  size: 36,
                  color: Color(0xff8F542E),
                ),
                onPressed: () {},
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
                onPressed: () {},
              ),
            ),
            Expanded(
              child: IconButton(
                icon: const Icon(
                  Icons.star_outline,
                  size: 36,
                  color: Color(0xff8F542E),
                ),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
