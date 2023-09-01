import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:thebaristascookbook/src/features/main/controller/page_controller.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  CustomAppBar({super.key, required this.pageNotifier});

  final PageViewController pageNotifier;

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
        listenable: pageNotifier,
        builder: (context, child) {
          return AppBar(
            toolbarHeight: 80,
            elevation: 0,
            backgroundColor: const Color(0xffFFFCF4),
            iconTheme: const IconThemeData(color: Colors.black, size: 36),
            actions: [
              pageNotifier.page != 3
                  ? IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.notifications_none_outlined,
                        size: 36,
                      ),
                    )
                  : IconButton(
                      onPressed: () {
                        Scaffold.of(context).openEndDrawer();
                      },
                      icon: const Icon(
                        Icons.filter_alt_outlined,
                        size: 36,
                      ),
                    ),
            ],
            title: SizedBox(
              height: 44,
              child: TextFormField(
                onChanged: (value) {
                  pageNotifier.page = 3;
                },
                style: GoogleFonts.cormorantGaramond(fontSize: 18),
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 16),
                    filled: true,
                    fillColor: const Color(0xffEBDACC).withOpacity(0.3),
                    hintText: 'Pesquisar',
                    hintStyle: const TextStyle(color: Colors.grey),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide:
                          const BorderSide(color: Color(0xff8F542E), width: 1),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide:
                          const BorderSide(color: Color(0xff8F542E), width: 1),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide:
                          const BorderSide(color: Color(0xff8F542E), width: 1),
                    ),
                    suffixIcon: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.search,
                        color: Color(0xff8F542E),
                      ),
                    ),
                    suffixIconColor: Colors.grey),
              ),
            ),
          );
        });
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
