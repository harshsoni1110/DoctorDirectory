import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        title: Row(
          children: <Widget>[
            Text(
              "Search",
              style: TextStyle(color: Colors.black, fontSize: 18),
            ),
          ],
        ),
        elevation: 2,
      ),
      body: SafeArea(
        child: renderSearchBar(),
      ),
    );
  }

  renderSearchBar () {
    return Hero(
      tag: "search",
      child: Container(
        margin: EdgeInsets.only(top:0, bottom: 16),
        child: Card(
          elevation: 0,
          color: Color(0xfff6f7fb),
          child: Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16.0),
            child: TextField(
              autofocus: true,
              style: TextStyle(
                fontWeight: FontWeight.w500,
              ),
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Enter a search term',
                  hintStyle: TextStyle(color: Color(0xffb7b8bc))),
            ),
          ),
        ),
      ),
    );
  }
}
