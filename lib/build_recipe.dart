import 'package:flutter/material.dart';
import 'recipe.dart';

Widget buildRecipe(Recipe recipe) {
  return Card(
    elevation: 5,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),
    ),
    child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Image(
            image: AssetImage(recipe.imageUrl),
            width: double.infinity,
          ),
          const SizedBox(height: 20.0),
          Text(recipe.label)
        ],
      ),
    ),
  );
}
