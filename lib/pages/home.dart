import 'package:flutter/material.dart';
import 'package:myapp/utils/bubble_stories.dart';
import 'package:myapp/utils/user_posts.dart';

class UserHome extends StatelessWidget {
  final List people = ['masuda', 'matsuda', 'yamamoto', 'noda', 'mitoma', 'matsuura'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text(
              'Instagram',
              style: TextStyle(color: Colors.black),
            ),
            Row(
              children: [
                Icon(Icons.add),
                Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Icon(Icons.favorite)),
                Icon(Icons.share),
              ],
            )
          ]),
        ),
        body: Column(
          children: [
            Container(
                height: 130,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: people.length,
                  itemBuilder: (context, index) {
                  return BubbleStories(text: people[index]);
                }
              )
            ),
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
