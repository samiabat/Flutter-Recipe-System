import 'package:flutter/material.dart';
import 'package:flutter_app/text_section.dart';
import 'build_recipe.dart';
import 'recipe.dart';
import 'recipe_detail.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyState();
}

class _MyState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: buildapp,
    );
  }
}

final ThemeData theme = ThemeData();
Widget buildapp = MaterialApp(
  title: "Job Vacancy",
  theme: theme.copyWith(
    colorScheme: theme.colorScheme
        .copyWith(primary: Colors.black, secondary: Colors.green),
  ),
  home: Scaffold(
    appBar: AppBar(
      title: const Text("My APp"),
    ),
    body: SafeArea(
      child: ListView.builder(
        itemCount: Recipe.recipes.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return RecipeDetail(recipe: Recipe.recipes[index]);
                  },
                ),
              );
            },
            child: buildRecipe(Recipe.recipes[index]),
          );
        },
      ),
    ),
  ),
);
