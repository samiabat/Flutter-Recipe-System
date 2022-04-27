import 'package:flutter/material.dart';
import 'recipe.dart';

class RecipeDetail extends StatefulWidget {
  final Recipe recipe;
  const RecipeDetail({Key? key, required this.recipe}) : super(key: key);

  @override
  State<RecipeDetail> createState() => _RecipeDetailState();
}

class _RecipeDetailState extends State<RecipeDetail> {
  int _sliderVal = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.recipe.label),
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 300,
              width: double.infinity,
              child: Image(
                image: AssetImage(widget.recipe.imageUrl),
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              widget.recipe.detail,
              style: const TextStyle(fontSize: 15),
            ),
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.all(10.0),
                itemCount: widget.recipe.ingredients.length,
                itemBuilder: (BuildContext context, int index) {
                  final ingredient = widget.recipe.ingredients[index];
                  return Text(
                      '${ingredient.quantity * _sliderVal} ${ingredient.measure} ${ingredient.name}');
                },
              ),
            ),
            Slider(
              min: 1,
              max: 100,
              divisions: 100,
              label: '$_sliderVal',
              value: _sliderVal.toDouble(),
              onChanged: (newVal) {
                setState(() {
                  _sliderVal = newVal.round();
                });
              },
              activeColor: Colors.green,
              inactiveColor: Color.fromARGB(255, 99, 95, 95),
            )
          ],
        ),
      ),
    );
  }
}
