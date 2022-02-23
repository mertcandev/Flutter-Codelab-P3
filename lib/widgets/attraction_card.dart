// ignore_for_file: must_be_immutable, use_key_in_widget_constructors, prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_codelab_p3/classes.dart';
import 'package:flutter_codelab_p3/pages/splash_page.dart';
import 'package:flutter_codelab_p3/widgets/rating_widget.dart';

class AttractionCard extends StatelessWidget {
  Attraction? attraction;

  AttractionCard({this.attraction});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(40),
          boxShadow: [
            BoxShadow(
                blurRadius: 20,
                offset: Offset.zero,
                color: Colors.black.withOpacity(0.1))
          ]),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(40),
        child: Container(
          height: 300,
          child: Stack(
            children: [
              Column(children: [
                Container(
                  height: 150,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(attraction!.imgPath!),
                          fit: BoxFit.cover)),
                ),
                Container(
                  height: 150,
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            attraction!.name!,
                            style: const TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.pin_drop,
                                color: Colors.grey.withOpacity(0.7),
                                size: 12,
                              ),
                              SizedBox(width: 5),
                              Text(
                                attraction!.location!,
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.grey.withOpacity(0.7),
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          SizedBox(width: 5),
                          RatingWidget(rating: attraction!.rating!)
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "\$${attraction!.price!.toStringAsFixed(2)}",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 5),
                          Text(
                            "Per Night",
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey.withOpacity(0.7),
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ]),
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  child: Icon(
                    Icons.favorite,
                    color: Colors.white,
                    size: 15,
                  ),
                  margin: EdgeInsets.only(right: 10),
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                      color: mainThemeColor,
                      borderRadius: BorderRadius.circular(40),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 10,
                            color: mainThemeColor.withOpacity(0.5),
                            offset: Offset.zero)
                      ]),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
