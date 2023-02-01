import 'package:flutter/material.dart';

class UserPosts extends StatelessWidget {
  final String name;
  const UserPosts({required this.name});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8.0),
      child: Column(children: [
      Padding(
        padding: const EdgeInsets.all(16.0),
        child:Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Row(
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: Colors.grey[300]),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                name,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 10,
              ),
              Text('2200/0/0 0:00')
            ],
          ),
          Icon(Icons.more_horiz)
        ]),
      ),
      Container(
        height: 300,
        color: Colors.grey[300],
      ),
      Padding(
          padding: const EdgeInsets.only(left: 16.0, top: 8.0),
          child: RichText(
            text: TextSpan(style: TextStyle(color: Colors.black), children: [
              TextSpan(
                  text: 'masuda',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(
                  text:
                      'これは例文です。これは例文です。これは例文です。これは例文です。これは例文です。これは例文です。これは例文です。'),
            ]),
          )),
      Padding(padding: const EdgeInsets.all(16),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Time: 2h 30min'),
            Icon(Icons.favorite_border_outlined),
          ],
      ),)
    ]));
  }
}
