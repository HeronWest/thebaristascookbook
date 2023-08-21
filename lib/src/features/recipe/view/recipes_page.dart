import 'package:flutter/material.dart';
import 'package:thebaristascookbook/src/features/home/view/components/recipes._card_widget.dart';

class RecipesPage extends StatelessWidget {
  const RecipesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          RecipeCardWidget(),
          RecipeCardWidget(),
          RecipeCardWidget(),
          RecipeCardWidget(),
          RecipeCardWidget(),
          RecipeCardWidget()
        ],
      ),
    );
  }
}
