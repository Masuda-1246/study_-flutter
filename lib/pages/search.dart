import 'package:flutter/material.dart';
import 'package:myapp/utils/ExploreGrid.dart';

class UserSearh extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Container(
            padding: EdgeInsets.all(8.0),
            color: Colors.grey[300],
            child: Row(
              children: [
                Icon(
                  Icons.search,
                  color: Colors.grey[500],
                ),
                Container(
                  child: Text(
                    'Search',
                    style: TextStyle(color: Colors.grey[500]),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      body: ExploreGrid(),
    );
  }
}