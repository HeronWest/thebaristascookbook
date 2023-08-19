import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TypeMenu extends StatelessWidget {
  TypeMenu({super.key});
  final List<Widget> _types = [
    TypeMenuItem(
      type: 'Café',
      color: const Color(0xffEBDACC).withOpacity(0.7),
    ),
    TypeMenuItem(
      type: 'Chá',
      color: const Color(0xffF8DF86).withOpacity(0.6),
    ),
    TypeMenuItem(type: 'Frapê', color: const Color(0xffB6B926).withOpacity(0.6)),
    TypeMenuItem(type: 'Smoothie', color: const Color(0xff104B64).withOpacity(0.6)),
    const TypeMenuItem(type: 'Chocolate'),
    const TypeMenuItem(type: 'Cocktail'),
  ];

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        child: Row(
          children: [..._types.map((e) => e).toList()],
        ),
      ),
    );
  }
}

class TypeMenuItem extends StatelessWidget {
  const TypeMenuItem({super.key, required this.type, this.color = Colors.blue});
  final String type;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      margin: const EdgeInsets.only(right: 10),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(type,
          textAlign: TextAlign.center,
          style: GoogleFonts.cormorantGaramond(
            color: Colors.black,
            fontSize: 22,
          )),
    );
  }
}
