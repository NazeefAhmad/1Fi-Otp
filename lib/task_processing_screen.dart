import 'package:flutter/material.dart';

class TaskProcessingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Task Under Processing'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Use an image or animation for a more appealing UI
            Image.asset(
              'assets/processing.gif', // Add a processing animation image in your assets
              width: 150,
              height: 150,
            ),
            SizedBox(height: 20),
            Text(
              'Your task is being processed...',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.blueAccent,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Please wait a moment.',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[700],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
