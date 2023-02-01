import 'package:flutter/material.dart';

class UserPosts extends StatelessWidget {
  final String name;
  const UserPosts({required this.name});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration:
                      BoxDecoration(shape: BoxShape.circle, color: Colors.grey[300]),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(name,style: TextStyle(fontWeight: FontWeight.bold),)
              ],
            ),
            Icon(Icons.menu)
          ]
        ),
      ),
      Container(
        height: 300,
        color: Colors.grey[300],
      ),
      Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(Icons.favorite),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: Icon(Icons.chat_bubble_outline),
                ),
                Icon(Icons.share),
              ],
            ),
            Icon(Icons.bookmark),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 16.0),
        child: Row(
          children: [
            Text('Linked by '),
            Text('matuda', style: TextStyle(fontWeight: FontWeight.bold),),
            Text(' and '),
            Text('others', style: TextStyle(fontWeight: FontWeight.bold),),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 16.0, top: 8.0),
        child: RichText(
          text: TextSpan(
            style: TextStyle(color: Colors.black),
            children: [
              TextSpan(text: 'masuda', style: TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'これは例文です。これは例文です。これは例文です。これは例文です。これは例文です。これは例文です。これは例文です。'),
            ]
          ),
        )
      )
    ]);
  }
}
