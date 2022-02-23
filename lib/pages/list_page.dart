// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_codelab_p3/classes.dart';
import 'package:flutter_codelab_p3/pages/splash_page.dart';
import 'package:flutter_codelab_p3/widgets/attraction_card.dart';
import 'package:flutter_codelab_p3/widgets/bottombar_widget.dart';

class ListPage extends StatelessWidget {
  const ListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.white),
        elevation: 0,
        title: Center(
          child: Icon(
            Icons.pool,
            color: Colors.white,
          ),
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 15),
            child: Icon(
              Icons.notifications,
              color: Colors.white,
            ),
          )
        ],
      ),
      backgroundColor: mainThemeColor,
      body: ClipRRect(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50), topRight: Radius.circular(50)),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50), topRight: Radius.circular(50))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: attractionsList.length,
                  itemBuilder: (context, index) {
                    Attraction attr = attractionsList[index];

                    return AttractionCard(attraction: attr);
                  },
                ),
              ),
              BottomBarWidget()            ],
          ),
        ),
      ),
    );
  }
}
