import 'package:email_otp/email_otp.dart';

class EmailAuthService {
  final EmailOTP _emailOTP = EmailOTP();

  // Initialize the EmailOTP object
  void initialize() {
    EmailOTP.config(
      emailTheme: EmailTheme.v5,
      appEmail: "nazeefahmad555@gmail.com",
      appName: "Nazeef",
      otpLength: 4,
      otpType: OTPType.numeric,
      expiry : 30000, // Set expiry to 10 minutes
    );
  }

  // Send OTP to the user's email
  Future<void> sendOtp(String email) async {
    try {
      final otpSent = await EmailOTP.sendOTP(
        email: email,
      );
      if (otpSent) {
        print('OTP sent successfully');
      } else {
        print('Failed to send OTP');
      }
    } catch (e) {
      print('Error sending OTP: $e');
    }
  }

  // Verify the OTP entered by the user
  Future<bool> verifyOtp(String otp) async {
    try {
      final otpValid = await EmailOTP.verifyOTP(
        otp: otp,
      );
      return otpValid;
    } catch (e) {
      print('Error verifying OTP: $e');
      return false;
    }
  }
}
