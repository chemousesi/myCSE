import 'package:flutter/material.dart';
import '../model/Map.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Map> _maps = [
    Map("Spot", "images/1.jpg"),
    Map("Media", "images/2.jpg"),
    Map("Com", "images/3.png"),
    Map("Dev", "images/4.png"),
  ];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text('Maps')),
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
                itemCount: _maps.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemBuilder: (context, index) => Card(
                    elevation: 5.0,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Image(
                          image: AssetImage(_maps[index].image),
                          height: 70,
                          width: 70,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              _maps[index].name,
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
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          // Add your onPressed code here!
        },
        label: Text("Scan"),
        icon: Icon(Icons.scanner),
        backgroundColor: Colors.blue,
      ),
    );
  }
}
