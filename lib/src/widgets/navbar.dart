import 'package:flutter/material.dart';
import 'package:thebaristascookbook/src/features/main/controller/page_controller.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key, required this.pageNotifier});
  final PageViewController pageNotifier;

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      elevation: 10,
      shape: const CircularNotchedRectangle(),
      notchMargin: 5, //notche margin between floating button and bottom appbar
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListenableBuilder(
            listenable: pageNotifier,
            builder: (context, child) {
              return Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(360),
                        color: pageNotifier.page == 0
                            ? Color(0xffEBDACC).withOpacity(0.4)
                            : null,
                      ),
                      child: IconButton(
                        icon: const Icon(
                          Icons.person_outline,
                          size: 36,
                          color: Color(0xff8F542E),
                        ),
                        onPressed: () => pageNotifier.page = 0,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(360),
                        color: pageNotifier.page == 1
                            ? Color(0xffEBDACC).withOpacity(0.4)
                            : null,
                      ),
                      child: IconButton(
                        icon: const Icon(
                          Icons.favorite_border_outlined,
                          size: 36,
                          color: Color(0xff8F542E),
                        ),
                        onPressed: () => pageNotifier.page = 1,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(360),
                        color: pageNotifier.page == 2
                            ? Color(0xffEBDACC).withOpacity(0.4)
                            : null,
                      ),
                      child: IconButton(
                        icon: const Icon(
                          Icons.home_outlined,
                          size: 36,
                          color: Color(0xff8F542E),
                        ),
                        onPressed: () => pageNotifier.page = 2,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(360),
                        color: pageNotifier.page == 3
                            ? Color(0xffEBDACC).withOpacity(0.4)
                            : null,
                      ),
                      child: IconButton(
                        icon: const Icon(
                          Icons.menu_book,
                          size: 36,
                          color: Color(0xff8F542E),
                        ),
                        onPressed: () => pageNotifier.page = 3,
                      ),
                    ),
                  ),
                  Spacer(flex: 1)
                ],
              );
            }),
      ),
    );
  }
}
