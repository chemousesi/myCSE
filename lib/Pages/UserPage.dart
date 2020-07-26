import 'package:flutter/material.dart';

class UserPage extends StatefulWidget {
  @override
  _UserPageState createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
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
                        height: 130,
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
                                'I am a good designer, and i like public',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            )
                          ],
                        ))
                  ],
                )),
            Container(
              margin: EdgeInsets.fromLTRB(10, 200, 10, 50),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.white.withOpacity(.9)),
            )
          ],
        ),
      ),
    );
  }
}
