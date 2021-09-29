import 'package:flutter/material.dart';

class CategorySelector extends StatefulWidget {
  CategorySelector({Key? key}) : super(key: key);

  @override
  _CategorySelectorState createState() => _CategorySelectorState();
}

class _CategorySelectorState extends State<CategorySelector> {
  int _index = 0;
  List _category = ["Message", "Online", "Groups", "Requsets"];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: _category.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  _index = index;
                });
              },
              child: Text(
                _category[index],
                style: Theme.of(context).textTheme.headline1!.copyWith(
                      color: _index == index ? Colors.white : Colors.white.withOpacity(0.5),
                    ),
              ),
            ),
          );
        },
      ),
    );
  }
}
