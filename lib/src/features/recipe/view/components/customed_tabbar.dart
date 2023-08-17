import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTabBar extends StatefulWidget {
  const CustomTabBar({super.key});

  @override
  State<CustomTabBar> createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar> {
  int selected = 0;

  setSelected(int index) {
    setState(() {
      selected = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Color(0xff8F542E).withOpacity(0.3),
          borderRadius: BorderRadius.circular(30)),
      height: 40,
      child: Row(
        children: [
          Expanded(
              child: InkWell(
            onTap: () => setSelected(0),
            child: Container(
              alignment: Alignment.center,
              height: 40,
              decoration: BoxDecoration(
                color: selected == 0 ? Colors.white : Colors.transparent,
                border: Border.all(
                    color:
                        selected == 0 ? Color(0xff8F542E) : Colors.transparent,
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
            onTap: () => setSelected(1),
            child: Container(
              alignment: Alignment.center,
              height: 40,
              decoration: BoxDecoration(
                color: selected == 1 ? Colors.white : Colors.transparent,
                border: Border.all(
                    color:
                        selected == 1 ? Color(0xff8F542E) : Colors.transparent,
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
            onTap: () => setSelected(2),
            child: Container(
              alignment: Alignment.center,
              height: 40,
              decoration: BoxDecoration(
                color: selected == 2 ? Colors.white : Colors.transparent,
                border: Border.all(
                    color:
                        selected == 2 ? Color(0xff8F542E) : Colors.transparent,
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
    );
  }
}
