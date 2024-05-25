import 'package:flutter/material.dart';


class CustomCard extends StatelessWidget {
  final String icon;
  final String title;
  final String subtitle;
  final VoidCallback? onPressed;
  final Color backgroundColor;

  CustomCard({
    required this.title,
    required this.subtitle,
    required this.backgroundColor,
    required this.icon, this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        color: backgroundColor,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              // Text(
              //   icon,
              //   textAlign: TextAlign.left,
              //   //style: TextStyle(fontSize: 20, color: Colors.white),
              // ),
              CircleAvatar(
                backgroundColor: Colors.white.withOpacity(0.2),
                radius: 15,
                child: Text(icon),
              ),
              Text(title,
              style: TextStyle(color: Colors.black),
                 ),

              Text(
                subtitle,
                style: TextStyle(color: Colors.black),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
