import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget space(double index) {
      return SizedBox(
        height: MediaQuery.of(context).size.width * index,
      );
    }

    Container textfield(String name) {
      return Container(
        height: MediaQuery.of(context).size.height * 0.07,
        width: MediaQuery.of(context).size.width * 0.8,
        child: TextField(
          style: TextStyle(
            color: Colors.white,
          ),
          decoration: InputDecoration(
            enabledBorder: const UnderlineInputBorder(
              borderSide: const BorderSide(color: Colors.white70, width: 0.0),
            ),
            border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(35))),
            fillColor: Colors.lightBlueAccent,
            labelText: name,
            labelStyle: TextStyle(
              color: Colors.white70,
            ),
          ),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          "Search",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
      ),
      extendBodyBehindAppBar: true,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Color.fromRGBO(2, 59, 71, 1),
                Color.fromRGBO(32, 125, 126, 1)
              ]),
        ),
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(
              vertical: MediaQuery.of(context).size.height * 0.12,
              horizontal: MediaQuery.of(context).size.width * 0.02),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              space(0.06),
              Row(
                children: [
                  textfield("Search Name"),
                  IconButton(
                      iconSize: MediaQuery.of(context).size.width * 0.1,
                      icon: Icon(
                        Icons.search,
                        color: Colors.white70,
                      ),
                      onPressed: () {})
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
