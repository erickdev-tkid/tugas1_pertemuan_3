import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  final String title;
  const SplashScreen({
    super.key, 
    required this.title
    });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body : Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  ),
                 )
              )
          ]
        ),
      )
    );
  }
}