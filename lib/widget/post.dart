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
          Row(),
          Row(),
          Row(),
        ],
      ),
    );
  }
}
