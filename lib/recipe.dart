class Recipe {
  String label;
  String imageUrl;
  String detail;
  int servings;
  List<Ingredients> ingredients;

  Recipe(
      this.label, this.imageUrl, this.detail, this.servings, this.ingredients);

  static List<Recipe> recipes = [
    Recipe("Computer", "assets/images/cof.jpeg",
        "This is computer one and if yu want to buy this call me", 2, [
      Ingredients(
        1,
        'box',
        'Spaghetti',
      ),
      Ingredients(
        4,
        'box',
        'Frozen Meatballs',
      ),
      Ingredients(
        0.5,
        'jar',
        'sauce',
      ),
    ]),
    Recipe("second computer", "assets/images/cp.jpeg",
        "THis is computer two if you want to bu this please contact me", 2, [
      Ingredients(
        1,
        'box',
        'Spaghetti',
      ),
      Ingredients(
        4,
        'box',
        'Frozen Meatballs',
      ),
      Ingredients(
        0.5,
        'jar',
        'sauce',
      ),
    ]),
    Recipe("Third Computer", "assets/images/sami.jpeg",
        "this is the third computer if you are happy contact me", 2, [
      Ingredients(
        1,
        'box',
        'Spaghetti',
      ),
      Ingredients(
        4,
        'box',
        'Frozen Meatballs',
      ),
      Ingredients(
        0.5,
        'jar',
        'sauce',
      ),
    ]),
    Recipe(
      "Fourth Computer",
      "assets/images/sa.jpeg",
      "This is the fourth computer",
      2,
      [
        Ingredients(
          1,
          'box',
          'Spaghetti',
        ),
        Ingredients(
          4,
          'box',
          'Frozen Meatballs',
        ),
        Ingredients(
          0.5,
          'jar',
          'sauce',
        ),
      ],
    ),
  ];
}

class Ingredients {
  double quantity;
  String measure;
  String name;

  Ingredients(
    this.quantity,
    this.measure,
    this.name,
  );
}
