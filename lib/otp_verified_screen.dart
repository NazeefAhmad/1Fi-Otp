import 'package:flutter/material.dart';
import 'otp_screen.dart';

class OTPVerifiedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: screenHeight * 0.02),
            Text(
              'Congratulations!',
              style: TextStyle(
                fontFamily: 'Fira',
                color: Color.fromRGBO(157, 126, 245, 1.0),
                fontSize: screenWidth * 0.06, // Responsive font size
                fontWeight: FontWeight.w800,
              ),
            ),
            SizedBox(height: screenHeight * 0.01), // Responsive spacing
            Text(
              'Your phone number has been verified successfully.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Fira',
                color: Color.fromRGBO(149, 193, 237, 1.0),
                fontSize: screenWidth * 0.04, // Responsive font size
              ),
            ),
            SizedBox(height: screenHeight * 0.12),
            Container(
              height: 250,
              width: 250,
              child: Image.asset(
                'assets/congrats.gif', // Add a construction-themed animation or image
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: screenHeight * 0.2), // Responsive spacing

            // Gradient Button

            Container(
              alignment: Alignment.bottomLeft,
              child: ElevatedButton(
                style: ButtonStyle(
                  padding: MaterialStateProperty.all<EdgeInsets>(
                    EdgeInsets.symmetric(
                      horizontal: screenWidth * 0.02,
                      vertical: screenHeight * 0.1,
                    ),
                  ),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
                  elevation: MaterialStateProperty.all<double>(0),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => OTPScreen()),
                  );
                },
                child: Ink(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.blue, Colors.purple], // Gradient colors
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: Container(
                    alignment: Alignment.center,
                    child: Text(
                      'Continue',
                      style: TextStyle(
                        fontSize: screenWidth * 0.05, // Responsive button text size
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
