import 'package:flutter/material.dart';

import 'widget/top_bar.dart';

class HomePage extends StatelessWidget {
  get body => null;

  get child => null;

@override
  Widget build(BuildContext context) {
    return Scaffold(
      body : SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TopBar(title: 'Pinky Club', 
              subtitle: 'Welcome Buddies !.....',
               color: Colors.pinkAccent
               ),
               const SizedBox(height: 20),
               Text('Photography',style: TextStyle(fontSize: 22,color: Colors.pink[300]),),
                const SizedBox(height: 20),
               GridView.builder(
                 padding: EdgeInsets.all(10),
                 itemCount: 4,
                 shrinkWrap: true,
                 physics: const NeverScrollableScrollPhysics(),
                 gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                   crossAxisSpacing: 10,
                   mainAxisSpacing: 10,
                   crossAxisCount: 2), 
                 itemBuilder: (ctx, index) => Container(
                  
                   child: Image.network('https://images.unsplash.com/photo-1623014204234-f5c255b37b34?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=387&q=80',fit: BoxFit.cover,),
                 ),
                 )
            ],
          ),
        ),
        
      ),
      );
  }
}

