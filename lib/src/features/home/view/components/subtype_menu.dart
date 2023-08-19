import 'package:flutter/material.dart';

class SubTypeMenu extends StatelessWidget {
  SubTypeMenu({super.key});

  final List<Widget> _subtypes = [
    const SubTypeMenuItem(
      text: 'Lattes',
    ),
    const SubTypeMenuItem(
      text: 'Cappuccinos',
    ),
    const SubTypeMenuItem(
      text: 'Coados',
    ),
    const SubTypeMenuItem(
      text: 'Espressos',
    ),
    const SubTypeMenuItem(
      text: 'Iced',
    ),
    const SubTypeMenuItem(
      text: 'Cold Brew',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        margin: const EdgeInsets.only(top: 20, bottom: 5),
        child: Row(
          children: [..._subtypes.map((e) => e).toList()],
        ),
      ),
    );
  }
}

class SubTypeMenuItem extends StatelessWidget {
  const SubTypeMenuItem({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Container(
          width: 90,
          height: 90,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: const Color(0xffEBDACC).withOpacity(0.5),
            borderRadius: BorderRadius.circular(360),
          ),
          child: Text(
            text,
            textAlign: TextAlign.center,
          )),
    );
  }
}
