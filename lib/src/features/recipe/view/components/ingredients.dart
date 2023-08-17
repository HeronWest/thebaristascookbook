import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IngredientsWidget extends StatelessWidget {
  IngredientsWidget({super.key});

  List<IngredientItem> ingredients = [
    IngredientItem(name: 'Café', quantity: 20, unit: 'g'),
    IngredientItem(name: 'Leite', quantity: 150, unit: 'ml'),
    IngredientItem(name: 'Chocolate', quantity: 70, unit: 'g'),
    IngredientItem(name: 'Creme de leite', quantity: 70, unit: 'ml'),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0),
      child: Column(
        children: [
          ...ingredients.map((e) => e).toList(),
          _CoffeeMethodWidget(name: 'Moka/Espresso')
        ],
      ),
    );
  }
}

class IngredientItem extends StatelessWidget {
  IngredientItem(
      {super.key,
      required this.name,
      required this.quantity,
      required this.unit});
  String name;
  int quantity;
  String unit;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('\u2022 $name',
            style: GoogleFonts.content(color: Colors.black, fontSize: 20)),
        Spacer(),
        Text('$quantity$unit',
            style: GoogleFonts.content(
                color: Colors.black.withOpacity(0.6), fontSize: 16)),
      ],
    );
  }
}

class _CoffeeMethodWidget extends StatelessWidget {
  _CoffeeMethodWidget({super.key, required this.name});
  String name;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        RichText(
          text: TextSpan(children: [
            TextSpan(
                text: '\u2022 Cafeteira ',
                style: GoogleFonts.content(color: Colors.black, fontSize: 20)),
            TextSpan(
                text: name,
                style: GoogleFonts.content(
                    color: Color(0xff8F542E), fontSize: 20)),
          ]),
        )
      ],
    );
  }
}
