import 'package:flutter/material.dart';
import '../Member.dart';

class RankingPage extends StatefulWidget {
  @override
  _RankingPageState createState() => _RankingPageState();
}

class _RankingPageState extends State<RankingPage> {
  List<Member> _members = [
    Member("Billel Bendoujiit", "images/8.png", "dev"),
    Member("Ahmed amed", "images/9.png", "com"),
    Member("chems ben", "images/10.png", "Design"),
  ];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text('Rank')),
      body: Stack(children: [
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
            padding: EdgeInsets.only(top: 30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 100.0,
                  height: 100.0,
                  padding: EdgeInsets.all(8.0),
                  child: Image.asset("images/rank.png"),
                ),
              ],
            )),
        Container(
          margin: EdgeInsets.only(top: 150),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(.7),
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(10.0),
              topLeft: Radius.circular(10.0),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 1.0, horizontal: 4.0),
            child: ListView.builder(
                itemCount: _members.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      onTap: () {},
                      title: Text(
                          (index + 1).toString() + '. ' + _members[index].name),
                      leading: CircleAvatar(
                        backgroundImage: AssetImage(_members[index].photo),
                      ),
                    ),
                  );
                }),
          ),
        ),
      ]),
    );
  }
}
