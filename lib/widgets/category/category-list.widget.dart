import 'package:flutter/material.dart';
import 'package:shopping/widgets/category/category-item-widget.dart';

class CategoryList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          CategoryItem(image: 'Icon_Devices.png'),
          CategoryItem(image: 'Icon_Gadgets.png'),
          CategoryItem(image: 'Icon_Gaming.png'),
          CategoryItem(image: 'Icon_Men_Shoe.png'),
          CategoryItem(image: 'Icon_Women_Shoe.png'),
        ],
      ),
    );
  }
}
