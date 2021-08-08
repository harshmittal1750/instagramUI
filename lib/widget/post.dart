import 'package:flutter/material.dart';

class Post extends StatelessWidget {
  const Post({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Icon(Icons.account_box_rounded),
                Expanded(child: Text("harsh")),
                Icon(Icons.menu),
              ],
            ),
          ),
          Container(
            child: Image.asset(
              "assets/images/post1.jpg",
              width: double.infinity,
              height: 345,
              fit: BoxFit.fitWidth,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
                child: Row(
                  children: [
                    Icon(Icons.favorite),
                    Icon(Icons.comment),
                    Icon(Icons.send),
                  ],
                ),
              ),
              Icon(Icons.download),
            ],
          ),
          Row(
            children: [
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: (Row(
                        children: [
                          Container(child: Icon(Icons.circle)),
                          Container(
                              transform:
                                  Matrix4.translationValues(-10.0, 00.0, 0.0),
                              child: Icon(Icons.circle)),
                          Container(
                              transform:
                                  Matrix4.translationValues(-20.0, 0.0, 0.0),
                              child: Icon(Icons.circle)),
                        ],
                      )),
                    ),
                    Column(
                      children: [
                        Container(
                          child: RichText(
                            text: TextSpan(
                                text: "Liked By",
                                style: TextStyle(color: Colors.black),
                                children: [
                                  TextSpan(
                                    text: " You ",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  TextSpan(
                                    text: " and ",
                                  ),
                                  TextSpan(
                                    text: " me ",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  )
                                ]),
                          ),
                        ),
                        Column(
                          children: [Text("November 23 ")],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          Divider(
            thickness: 2,
            indent: 10,
            endIndent: 10,
          ),
        ],
      ),
    );
  }
}
