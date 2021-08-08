import 'package:flutter/material.dart';
import 'package:instagram_ui/widget/post.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      "Instagram",
                      style: TextStyle(fontSize: 30, fontFamily: "cursive"),
                    ),
                  ),
                  Icon(Icons.add_box_outlined),
                  Icon(Icons.favorite_border),
                  Icon(Icons.message_outlined),
                ],
              ),
            ),
            Expanded(
              child: (Container(
                child: (ListView.builder(
                  itemBuilder: (context, index) => Post(),
                )),
              )),
            ),
            Container(
              child: Post(),
            ),
            Expanded(
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(Icons.home),
                    Icon(Icons.search),
                    Icon(Icons.perm_media),
                    Icon(Icons.card_travel),
                    Icon(Icons.person_sharp),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
