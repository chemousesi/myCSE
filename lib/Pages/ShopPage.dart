import 'package:flutter/material.dart';
import 'package:fluttertest/Item.dart';

class ShopPage extends StatefulWidget {
  @override
  _ShopPageState createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  List<Item> _items = [
    Item("tshirt", "images/1.jpg", 100),
    Item("things", "images/2.jpg", 50),
    Item("item", "images/3.png", 300),
    Item("item", "images/4.png", 150),
    Item("item", "images/5.png", 152),
    Item("item", "images/6.png", 32),
    Item("item", "images/7.png", 153),
    Item("item", "images/8.png", 200),
    Item("item", "images/indi.png", 300),
  ];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text('Shop')),
      body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                Colors.blue[200],
                Colors.blue[400],
              ])),

          // grid view from here

          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: GridView.builder(
                itemCount: _items.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemBuilder: (context, index) => Card(
                    elevation: 5.0,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Image(
                          image: AssetImage(_items[index].image),
                          height: 70,
                          width: 70,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              _items[index].price.toString() + " €",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            MaterialButton(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0)),
                                splashColor: Colors.amber,
                                height: 20,
                                minWidth: 8,
                                onPressed: () {},
                                color: Colors.amber[600],
                                child: Row(
                                  children: <Widget>[
                                    Text(
                                      'Buy',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                    Icon(
                                      Icons.add_shopping_cart,
                                      color: Colors.white,
                                    )
                                  ],
                                )),
                          ],
                        ),
                      ],
                    ))),
          )),
    );
  }

  void _buyButtonPressed() {}
}
