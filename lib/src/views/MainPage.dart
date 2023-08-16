import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:thebaristascookbook/src/model/page_model.dart';
import 'package:thebaristascookbook/src/widgets/navbar.dart';
import 'package:thebaristascookbook/src/widgets/page_controller_widget.dart';

class MainPage extends StatelessWidget {
  MainPage({super.key});
  final PageModel _pageNotifier = PageModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        toolbarHeight: 80,
        elevation: 0,
        backgroundColor: const Color(0xffFFFCF4),
        iconTheme: const IconThemeData(color: Colors.black, size: 36),
        title: SizedBox(
          height: 44,
          child: TextFormField(
            style: GoogleFonts.cormorantGaramond(fontSize: 18),
            decoration: InputDecoration(
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
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
                suffixIcon: const Icon(
                  Icons.search,
                  size: 28,
                ),
                suffixIconColor: Colors.grey),
          ),
        ),
      ),
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
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      backgroundColor: const Color(0xffFFFCF4),
    );
  }
}
