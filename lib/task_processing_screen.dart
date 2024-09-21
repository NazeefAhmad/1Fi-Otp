// import 'package:flutter/material.dart';
//
// class TaskProcessingScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Task Under Processing'),
//         backgroundColor: Colors.blueAccent,
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             // Use an image or animation for a more appealing UI
//             Image.asset(
//               'assets/processing.gif', // Add a processing animation image in your assets
//               width: 150,
//               height: 150,
//             ),
//             SizedBox(height: 20),
//             Text(
//               'Your task is being processed...',
//               style: TextStyle(
//                 fontSize: 18,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.blueAccent,
//               ),
//             ),
//             SizedBox(height: 10),
//             Text(
//               'Please wait a moment.',
//               style: TextStyle(
//                 fontSize: 16,
//                 color: Colors.grey[700],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

class TaskProcessingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hold On...We are working on it!') ,
        backgroundColor: Color.fromRGBO(163, 140, 227, 1.0),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Construction-themed image or animation
            Container(
              height: 250,
              width: 250,
              child: Image.asset(
                'assets/cons.gif', // Add a construction-themed animation or image
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Oops! We’re Building Something Cool!',
              style: TextStyle(
                fontFamily: 'league',
                fontSize: 23,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 10),
            Text(

              'Hang tight! More content and amazing features are coming soon.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Fira',
                fontSize: 18,
                color: Colors.grey[300],
              ),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/mainScreen');
                // Add action or navigation if needed
              },
              child: Text('Go Back'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromRGBO(171, 147, 237, 1.0),
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                textStyle: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.black,
    );
  }
}
