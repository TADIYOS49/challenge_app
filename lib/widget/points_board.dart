import 'package:flutter/material.dart';

class Board extends StatelessWidget {
  Board({Key key}) : super(key: key);

  final TextStyle style = TextStyle(
    fontStyle: FontStyle.italic,
    color: Color.fromRGBO(2, 59, 71, 1),
    fontSize: 20,
    fontWeight: FontWeight.w700,
  );

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "Your\nPoints",
                style: style,
              ),
              Text("20",
                  style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontSize: 20,
                      fontWeight: FontWeight.bold))
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "Team\nPoints",
                style: style,
              ),
              Text("20",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "Total\nPoints",
                style: style,
              ),
              Text("40",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))
            ],
          ),
        ],
      ),
    );
  }
}
