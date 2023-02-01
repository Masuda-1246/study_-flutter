import 'package:flutter/material.dart';
import 'package:myapp/utils/bubble_stories.dart';
import 'package:myapp/utils/user_posts.dart';

class UserHome extends StatelessWidget {
  final List people = ['masuda', 'matsuda', 'yamamoto', 'noda', 'mitoma', 'matsuura'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey[200],
          elevation: 0,
          title:Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'sapori',
                style: TextStyle(color: Colors.teal[400], fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Icon(Icons.add_circle_outline)
                  ),
                  Icon(Icons.menu),
                ],
              )
            ]
          ),
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: people.length,
                itemBuilder: (context, index) {
                  return UserPosts(name: people[index]);
                }
              ),
            )
          ],
        ));
  }
}
