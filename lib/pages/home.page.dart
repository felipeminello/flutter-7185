import 'package:flutter/material.dart';
import 'package:shopping/widgets/category/category-list.widget.dart';
import 'package:shopping/widgets/product/product-item.widget.dart';
import 'package:shopping/widgets/search-box.widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(15),
        color: Color(0xFFF5F5F5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SizedBox(
              height: 60,
            ),
            SearchBox(),
            SizedBox(
              height: 30,
            ),
            Text(
              "Categories",
              style: TextStyle(fontSize: 30),
            ),
            Container(
              height: 90,
              child: CategoryList(),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Best Selling',
                  style: TextStyle(fontSize: 30),
                ),
                FlatButton(
                  child: Text('SeeAll'),
                  onPressed: () => {},
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 350,
              child: productList(context),
            ),
          ],
        ),
      ),
    );
  }
}

Widget productList(BuildContext context) {
  return Container(
    child: ListView(
      scrollDirection: Axis.horizontal,
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
