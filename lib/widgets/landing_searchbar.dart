// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_codelab_p3/pages/list_page.dart';
import 'package:flutter_codelab_p3/pages/splash_page.dart';

class LandingSearchBar extends StatelessWidget {
  const LandingSearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 30, right: 30),
      padding: EdgeInsets.only(top: 5, bottom: 5, left: 20, right: 5),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(50)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Search Hotel",
            style: TextStyle(color: Colors.grey),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => ListPage()));
            },
            child: Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                  color: mainThemeColor,
                  borderRadius: BorderRadius.circular(25)),
              child: Icon(Icons.search, color: Colors.white, size: 15),
            ),
          )
        ],
      ),
    );
  }
}
