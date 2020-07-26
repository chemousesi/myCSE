import 'package:flutter/material.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';
import '../model/Item.dart';

class UserPage extends StatefulWidget {
  @override
  _UserPageState createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
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
      // appBar: new AppBar(title: new Text('User')),

      body: Container(
        color: Colors.black,
        child: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [
                    Colors.blue[200],
                    Colors.blue[400],
                  ])),
            ),
            Padding(
                padding: EdgeInsets.only(top: 50.0, left: 30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 100.0,
                      height: 100.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.white, width: 2.0),
                      ),
                      padding: EdgeInsets.all(8.0),
                      child: Image.asset("images/indi.png"),
                    ),
                    Container(
                        padding: EdgeInsets.all(8.0),
                        width: 200,
                        height: 150,
                        child: Column(
                          children: <Widget>[
                            Container(
                              //title
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Mouad Bnmousset',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'RobotoMono'),
                              ),
                            ),
                            Container(
                              // small subtitle
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Mad Man',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Colors.grey[300],
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal,
                                    fontFamily: 'RobotoMono'),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white.withOpacity(.5)),
                              height: 50,
                              width: 230,
                              padding: EdgeInsets.only(top: 3.0, left: 3.0),
                              child: Text(
                                'I am a good designer, and i like public speaking!!?',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            SizedBox(height: 3),
                            Container(
                              height: 15,
                              child: FAProgressBar(
                                progressColor: Colors.amber,
                                currentValue: 80,
                                displayText: 'HP',
                              ),
                            ),
                            SizedBox(height: 5),
                            Container(
                              height: 15,
                              child: FAProgressBar(
                                progressColor: Colors.yellow,
                                currentValue: 50,
                                displayText: 'XP',
                              ),
                            ),
                          ],
                        ))
                  ],
                )),
            Text(
              "Badges",
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
            ),
            Container(
              padding: EdgeInsets.only(top: 30),
              margin: EdgeInsets.fromLTRB(20, 200, 20, 50),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.white.withOpacity(.9)),
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
                                _items[index].name,
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                            ],
                          ),
                        ],
                      ))),
            ),
          ],
        ),
      ),
    );
  }
}
