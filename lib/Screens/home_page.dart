import 'package:flutter/material.dart';

import 'widget/top_bar.dart';

class HomePage extends StatelessWidget {
  get body => null;

  get child => null;

@override
  Widget build(BuildContext context) {
    return Scaffold(
      body : SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TopBar(title: 'Pinky Club', 
            subtitle: 'Welcome Buddies !.....',
             color: Colors.pinkAccent
             ),
             const SizedBox(height: 20),
             Text('Photography',style: TextStyle(fontSize: 22,color: Colors.pink[300]),)
          ],
        ),
        
      ),
      );
  }
}

