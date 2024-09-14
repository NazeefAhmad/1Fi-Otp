import 'package:flutter/material.dart';
import 'email_auth_service.dart'; // Import the service
import 'task_processing_screen.dart'; // Import the new screen

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Email OTP Authentication',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: OTPScreen(),
    );
  }
}

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
      appBar: AppBar(
        title: Text('Email OTP Authentication'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: _sendOtp,
              child: Text('Send OTP'),
            ),
            SizedBox(height: 16),
            TextField(
              controller: _otpController,
              decoration: InputDecoration(
                labelText: 'Enter OTP',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: _verifyOtp,
              child: Text('Verify OTP'),
            ),
          ],
        ),
      ),
    );
  }
}
