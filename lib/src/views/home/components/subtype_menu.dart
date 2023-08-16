import 'package:flutter/material.dart';

class SubTypeMenu extends StatelessWidget {
  SubTypeMenu({super.key});

  final List<Widget> _subtypes = [
    SubTypeMenuItem(
      text: 'Lattes',
    ),
    SubTypeMenuItem(
      text: 'Cappuccinos',
    ),
    SubTypeMenuItem(
      text: 'Coados',
    ),
    SubTypeMenuItem(
      text: 'Espressos',
    ),
    SubTypeMenuItem(
      text: 'Iced',
    ),
    SubTypeMenuItem(
      text: 'Cold Brew',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        margin: EdgeInsets.only(top: 20, bottom: 5),
        width: screenSize.height * 0.8,
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
