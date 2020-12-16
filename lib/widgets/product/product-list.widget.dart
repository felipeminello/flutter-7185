import 'package:flutter/material.dart';
import 'package:shopping/widgets/product/product-item.widget.dart';

class ProductList extends StatelessWidget {
  final Axis scrollDirection;

  ProductList({@required this.scrollDirection});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        scrollDirection: this.scrollDirection,
        children: <Widget>[
          ProductItem(
            image: 'product-1.png',
            title: 'Produto 1',
            description: 'Descrição',
            price: 200.0,
          ),
          ProductItem(
            image: 'product-2.png',
            title: 'Produto 2',
            description: 'Descrição',
            price: 200.0,
          ),
          ProductItem(
            image: 'product-3.png',
            title: 'Produto 3',
            description: 'Descrição',
            price: 200.0,
          ),
          ProductItem(
            image: 'product-4.png',
            title: 'Produto 4',
            description: 'Descrição',
            price: 200.0,
          ),
        ],
      ),
    );
  }
}
