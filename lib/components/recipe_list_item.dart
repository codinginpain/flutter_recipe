import 'package:flutter/material.dart';

class RecipeListItem extends StatelessWidget {
  final String imageName;
  final String title;

  const RecipeListItem(this.imageName, this.title);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AspectRatio(
            aspectRatio: 2 / 1,
            child: Image.asset("assets/images/$imageName.jpeg"),
          ),
          SizedBox(height: 10),
          Text(
            "$title",
            style: TextStyle(fontSize: 20),
          ),
          Text(
              "Have you ever made your own $title? Once you've tried a homemade Made a $title you'll never go back",
              style: TextStyle(color: Colors.grey, fontSize: 12)),
        ],
      ),
    );
  }
}
