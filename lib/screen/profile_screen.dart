import 'dart:math';

import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            SizedBox(height: 20),
            Stack(

              children: [
                CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(
                    'https://external-preview.redd.it/lamine-yamal-will-sign-new-deal-at-barcelona-tomorrow-v0-QG07yuFJoyzR4DJxBXiEpWogc1eVj6GIaEqRuwPxKu4.jpg?width=1080&crop=smart&auto=webp&s=f5d55baf1e927587fd152c26ffed77a0f553da21'
                    ),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: CircleAvatar(
                  radius: 15,
                  backgroundColor: Colors.blue,
                  child: Icon(
                    Icons.edit,
                    size: 13,
                    color: Colors.white,
                  ),
                ),
              ),
              ],
            ),      
            SizedBox(height: 10),
            Text(

              'Lamine Yamal',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
              ),
              onPressed: () {}, 
              child: Text("Lamine.yamal@email.com"),
              ),
          ],),
      ),


    );
  }
}