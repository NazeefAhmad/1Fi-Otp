// otp_screen.dart
import 'package:flutter/material.dart';
import 'email_auth_service.dart'; // Import the email auth service
import 'task_processing_screen.dart'; // Import the task processing screen

class OTPScreen extends StatefulWidget {
  @override
  _OTPScreenState createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _otpController = TextEditingController();
  final EmailAuthService _emailAuthService = EmailAuthService();

  @override
  void initState() {
    super.initState();
    _emailAuthService.initialize(); // Initialize service
  }

  void _sendOtp() async {
    final email = _emailController.text.trim();
    if (email.isNotEmpty) {
      try {
        await _emailAuthService.sendOtp(email);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('OTP sent successfully')),
        );
      } catch (e) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Failed to send OTP: $e')),
        );
      }
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Please enter an email')),
      );
    }
  }

  void _verifyOtp() async {
    final otp = _otpController.text.trim();
    if (otp.isNotEmpty) {
      try {
        final otpValid = await _emailAuthService.verifyOtp(otp);
        if (otpValid) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => TaskProcessingScreen()),
          );
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Invalid OTP')),
          );
        }
      } catch (e) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Error verifying OTP: $e')),
        );
      }
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Please enter OTP')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Verify Your Email',
          textAlign: TextAlign.start,
          style: TextStyle(color: Color.fromRGBO(238, 214, 245, 1.0)),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Positioned(
                    top: 0, // Position the text at the top of the Stack
                    left: 0, // Optionally adjust horizontal position
                    right:
                        0, // Optionally adjust horizontal position to center text
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Text(
                        'Your Text Here', // Replace with your desired text
                        style: TextStyle(
                          fontFamily: 'league',
                          color: Colors.white, // Text color
                          fontSize: 38, // Font size
                          fontWeight: FontWeight.bold, // Font weight
                        ),
                        textAlign: TextAlign.center, // Center-align the text
                      ),
                    ),
                  ),
                  Container(
                    height: 130,
                    width: 130,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                            'assets/images/logo.png'), // Replace with your image asset path
                        fit: BoxFit
                            .cover, // Adjust how the image fits within the container
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 35,
              ),
              TextField(
                controller: _emailController,
                style: TextStyle(
                  color: Color.fromRGBO(15, 0, 21, 1.0), // Yellow text color
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
                decoration: InputDecoration(
                  labelText: 'Email',
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                  labelStyle: TextStyle(
                    fontFamily: 'league',
                    color: Color.fromRGBO(128, 0, 128, 1.0), // Purple label color
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                  filled: true,
                  fillColor:
                      Color.fromRGBO(240, 240, 240, 1.0), // Light background
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0),
                    borderSide: BorderSide(
                      color:
                          Color.fromRGBO(128, 0, 128, 1.0), // Purple border color
                      width: 2.0,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0),
                    borderSide: BorderSide(
                      color: Color.fromRGBO(
                          204, 149, 244, 1.0), // Softer purple when focused
                      width: 2.0,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0),
                    borderSide: BorderSide(
                      color:
                          Color.fromRGBO(128, 0, 128, 1.0), // Purple when enabled
                      width: 1.5,
                    ),
                  ),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
                ),
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed:  _sendOtp,
                child: Text(

                  'Send OTP',
                  style: TextStyle(
                    fontFamily: 'league',
                    color: Colors.white, // Text color
                    fontSize: 16, // Optional: Adjust font size
                    fontWeight: FontWeight.bold, // Optional: Make text bold
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromRGBO(128, 0, 128, 1.0), // Background color (purple)
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20), // Adjust button padding
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25), // Rounded corners
                  ),
                  elevation: 5, // Optional: Adjust shadow/elevation
                ),
              ),

              SizedBox(height: 66),
              TextField(
                controller: _otpController,
                style: TextStyle(
                  color: Color.fromRGBO(15, 0, 21, 1.0), // Yellow text color
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
                decoration: InputDecoration(
                  labelText: 'OTP',
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                  labelStyle: TextStyle(
                    color: Color.fromRGBO(128, 0, 128, 1.0), // Purple label color
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                  filled: true,
                  fillColor:
                      Color.fromRGBO(240, 240, 240, 1.0), // Light background
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0),
                    borderSide: BorderSide(
                      color:
                          Color.fromRGBO(128, 0, 128, 1.0), // Purple border color
                      width: 2.0,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                    borderSide: BorderSide(
                      color: Color.fromRGBO(
                          204, 149, 244, 1.0), // Softer purple when focused
                      width: 2.0,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0),
                    borderSide: BorderSide(
                      color:
                          Color.fromRGBO(128, 0, 128, 1.0), // Purple when enabled
                      width: 1.5,
                    ),
                  ),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
                ),
                keyboardType: TextInputType.number,
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: _verifyOtp,
                child: Text(

                  'Verify OTP',
                  style: TextStyle(
                    fontFamily: 'league',
                    color: Colors.white, // Text color
                    fontSize: 16, // Optional: Adjust font size
                    fontWeight: FontWeight.bold, // Optional: Make text bold
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromRGBO(128, 0, 128, 1.0), // Background color (purple)
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20), // Adjust button padding
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25), // Rounded corners
                  ),
                  elevation: 5, // Optional: Adjust shadow/elevation
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
