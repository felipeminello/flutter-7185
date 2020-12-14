import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Expanded(
            child: Container(
              child: productList(context),
            ),
          ),
          Container(
            color: Colors.black12,
            height: 80,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                    top: 20,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Total'),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        '\$4250',
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 50,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    ),
                  ),
                  margin: EdgeInsets.only(right: 20),
                  child: FlatButton(
                    onPressed: () => {},
                    child: Text(
                      'Checkout',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget productList(BuildContext context) {
  return ListView(
    children: <Widget>[
      productItem(),
      productItem(),
      productItem(),
      productItem(),
      productItem(),
      productItem(),
      productItem(),
      // productItem(
      //     context,
      //     'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
      //     '755',
      //     'assets/product-1.png'),
      // productItem(
      //     context,
      //     'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
      //     '450',
      //     'assets/product-2.png'),
      // productItem(
      //     context,
      //     'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
      //     '900',
      //     'assets/product-3.png'),
      // productItem(
      //     context,
      //     'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
      //     '100',
      //     'assets/product-4.png'),
      // productItem(
      //     context,
      //     'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
      //     '99',
      //     'assets/product-5.png'),
      // productItem(
      //     context,
      //     'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
      //     '49',
      //     'assets/product-6.png'),
      // productItem(
      //     context,
      //     'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
      //     '199',
      //     'assets/product-7.png'),
    ],
  );
}

Widget productItem() {
  return Container(
    height: 120,
    margin: EdgeInsets.all(5),
    child: Row(
      children: <Widget>[
        Container(
          width: 100,
          height: 100,
          margin: EdgeInsets.all(10),
          child: Image.asset(
            'assets/product-1.png',
            fit: BoxFit.fitWidth,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 20,
            left: 10,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('Título'),
              Text(
                '\$200',
                style: TextStyle(color: Colors.blue),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 30,
                width: 120,
                decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.all(
                    Radius.circular(5),
                  ),
                ),
                child: Row(
                  children: [
                    Container(
                      width: 40,
                      alignment: Alignment.center,
                      child: FlatButton(
                        child: Text('-'),
                        onPressed: () => {},
                      ),
                    ),
                    Container(
                      width: 40,
                      alignment: Alignment.center,
                      child: Text('1'),
                    ),
                    Container(
                      width: 40,
                      alignment: Alignment.center,
                      child: FlatButton(
                        child: Text('+'),
                        onPressed: () => {},
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    ),
  );
}
