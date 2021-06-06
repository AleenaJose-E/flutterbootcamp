import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  final String title;
  final String subtitle;
  final Color color;
  TopBar({required this.subtitle,required this.title,required this.color});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 44,horizontal: 23),
      width: double.infinity,
      color: color,
      child: Row(
        children: [
           CircleAvatar(
             radius: 40,
             backgroundImage: NetworkImage('https://images.unsplash.com/photo-1618876994796-6bfc1a46299b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=334&q=80'),
           ),
           const SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title,style:TextStyle(fontSize: 20, fontWeight: FontWeight.w600,color: Colors.white
              ),),
              Text(subtitle,style: TextStyle(fontSize: 16,color: Colors.white),),
            ],
          ),
        ],
      ),
    );
  }
}