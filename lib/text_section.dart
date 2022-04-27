import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'recipe.dart';

// ignore: non_constant_identifier_names
Widget TextSection(Recipe recipe) {
  return Container(
    child: Column(
      children: [
        Image(
          image: AssetImage(recipe.imageUrl),
        ),
        const SizedBox(
          height: 15.0,
        ),
        Text(
          recipe.detail,
          style: TextStyle(fontSize: 12, color: Colors.black),
        )
      ],
    ),
  );
}
