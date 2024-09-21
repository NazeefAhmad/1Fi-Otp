// // // // import 'package:firebase_auth/firebase_auth.dart';
// // // //
// // // // class MobileAuthService {
// // // //   final FirebaseAuth _auth = FirebaseAuth.instance;
// // // //   late String _verificationId; // Store verification ID
// // // //
// // // //   Future<void> initialize() async {
// // // //     // Initialize Firebase if needed
// // // //     // Firebase.initializeApp(); // Uncomment if needed
// // // //   }
// // // //
// // // //   Future<void> sendOtp(String mobile) async {
// // // //     try {
// // // //       // Send OTP using Firebase Auth
// // // //       await _auth.verifyPhoneNumber(
// // // //         phoneNumber: mobile,
// // // //         verificationCompleted: (PhoneAuthCredential credential) async {
// // // //           // Auto-retrieval or instant verification completed
// // // //           // Sign in with the credential (if applicable)
// // // //           await _auth.signInWithCredential(credential);
// // // //         },
// // // //         verificationFailed: (FirebaseAuthException e) {
// // // //           // Handle verification failure
// // // //           print('Failed to send OTP: ${e.message}');
// // // //           throw e;
// // // //         },
// // // //         codeSent: (String verificationId, int? resendToken) {
// // // //           // Handle OTP sent
// // // //           _verificationId = verificationId;
// // // //           print('OTP sent to $mobile');
// // // //         },
// // // //         codeAutoRetrievalTimeout: (String verificationId) {
// // // //           // Auto-retrieval timeout
// // // //           _verificationId = verificationId;
// // // //           print('Verification code timeout');
// // // //         },
// // // //       );
// // // //     } catch (e) {
// // // //       print('Failed to send OTP: $e');
// // // //       throw e;
// // // //     }
// // // //   }
// // // //
// // // //   Future<bool> verifyOtp(String otp) async {
// // // //     bool isValid = false;
// // // //     try {
// // // //       // Verify OTP using Firebase Auth
// // // //       final credential = PhoneAuthProvider.credential(
// // // //         verificationId: _verificationId,
// // // //         smsCode: otp,
// // // //       );
// // // //
// // // //       final userCredential = await _auth.signInWithCredential(credential);
// // // //       isValid = userCredential.user != null;
// // // //     } catch (e) {
// // // //       print('Error verifying OTP: $e');
// // // //       // Handle error appropriately
// // // //     }
// // // //     return isValid;
// // // //   }
// // // // }
// // //
// // // import 'package:firebase_auth/firebase_auth.dart';
// // //
// // // class MobileAuthService {
// // //   final FirebaseAuth _auth = FirebaseAuth.instance;
// // //   String? _verificationId;
// // //
// // //   Future<void> initialize() async {
// // //     // Firebase is initialized in main.dart
// // //   }
// // //
// // //   Future<void> sendOtp(String mobile, [Null Function(dynamic verificationId, dynamic resendToken) param1]) async {
// // //     try {
// // //       await _auth.verifyPhoneNumber(
// // //         phoneNumber: mobile,
// // //         verificationCompleted: (PhoneAuthCredential credential) async {
// // //           // This callback is triggered when the SMS code is automatically retrieved
// // //           await _auth.signInWithCredential(credential);
// // //         },
// // //         verificationFailed: (FirebaseAuthException e) {
// // //           print('Verification failed: ${e.message}');
// // //           throw e;
// // //         },
// // //         codeSent: (String verificationId, int? resendToken) {
// // //           // Save the verificationId for use during OTP verification
// // //           _verificationId = verificationId;
// // //           print('OTP sent to $mobile');
// // //         },
// // //         codeAutoRetrievalTimeout: (String verificationId) {
// // //           // Auto-resolution timed out
// // //           _verificationId = verificationId;
// // //           print('Code auto-retrieval timed out');
// // //         },
// // //       );
// // //     } catch (e) {
// // //       print('Failed to send OTP: $e');
// // //       throw e;
// // //     }
// // //   }
// // //
// // //   Future<bool> verifyOtp(String otp) async {
// // //     bool isValid = false;
// // //     try {
// // //       if (_verificationId == null) {
// // //         throw Exception('Verification ID is not set');
// // //       }
// // //
// // //       final credential = PhoneAuthProvider.credential(
// // //         verificationId: _verificationId!,
// // //         smsCode: otp,
// // //       );
// // //
// // //       final userCredential = await _auth.signInWithCredential(credential);
// // //       isValid = userCredential.user != null;
// // //     } catch (e) {
// // //       print('Error verifying OTP: $e');
// // //       // Handle error appropriately
// // //     }
// // //     return isValid;
// // //   }
// // // }
// // import 'package:firebase_auth/firebase_auth.dart';
// //
// // class MobileAuthService {
// //   final FirebaseAuth _auth = FirebaseAuth.instance;
// //   String? _verificationId; // Nullable verification ID for safety
// //
// //   // Firebase is initialized in main.dart, so no need to reinitialize here
// //   Future<void> initialize() async {
// //     // Initialization if needed, typically handled in main.dart
// //   }
// //
// //   // Method to send OTP to a given mobile number
// //   Future<void> sendOtp(
// //       String mobile,
// //       void Function(String verificationId, int? resendToken) onCodeSent,
// //       void Function(FirebaseAuthException e) onVerificationFailed,
// //       ) async {
// //     try {
// //       await _auth.verifyPhoneNumber(
// //         phoneNumber: mobile,
// //         verificationCompleted: (PhoneAuthCredential credential) async {
// //           // Auto-retrieval or instant verification completed
// //           await _auth.signInWithCredential(credential);
// //           print('Auto-verified successfully');
// //         },
// //         verificationFailed: onVerificationFailed,
// //         codeSent: onCodeSent,
// //         codeAutoRetrievalTimeout: (String verificationId) {
// //           // Auto-retrieval timed out
// //           _verificationId = verificationId;
// //           print('Code auto-retrieval timed out');
// //         },
// //       );
// //     } catch (e) {
// //       print('Failed to send OTP: $e');
// //       throw e; // Re-throw to allow external error handling
// //     }
// //   }
// //
// //   // Method to verify the OTP entered by the user
// //   Future<bool> verifyOtp(String otp) async {
// //     bool isValid = false;
// //     try {
// //       if (_verificationId == null) {
// //         throw Exception('Verification ID is not available. Make sure OTP is sent.');
// //       }
// //
// //       final credential = PhoneAuthProvider.credential(
// //         verificationId: _verificationId!,
// //         smsCode: otp,
// //       );
// //
// //       final userCredential = await _auth.signInWithCredential(credential);
// //       isValid = userCredential.user != null; // Check if user is authenticated
// //
// //       if (isValid) {
// //         print('OTP verified successfully!');
// //       } else {
// //         print('OTP verification failed.');
// //       }
// //     } catch (e) {
// //       print('Error verifying OTP: $e');
// //     }
// //     return isValid;
// //   }
// // }
// import 'package:firebase_auth/firebase_auth.dart';
//
// class MobileAuthService {
//   final FirebaseAuth _auth = FirebaseAuth.instance;
//   String? _verificationId; // Nullable verification ID for safety
//
//   // Initialization if needed, typically handled in main.dart
//   Future<void> initialize() async {
//     // Initialization if needed
//   }
//
//   // Method to send OTP to a given mobile number
//   Future<void> sendOtp(
//       String mobile,
//       void Function(String verificationId, int? resendToken) onCodeSent,
//       void Function(FirebaseAuthException e) onVerificationFailed,
//       void Function(String verificationId) onCodeAutoRetrievalTimeout) async {
//     try {
//       await _auth.verifyPhoneNumber(
//         phoneNumber: mobile,
//         verificationCompleted: (PhoneAuthCredential credential) async {
//           // Auto-retrieval or instant verification completed
//           await _auth.signInWithCredential(credential);
//           print('Auto-verified successfully');
//         },
//         verificationFailed: onVerificationFailed,
//         codeSent: onCodeSent,
//         codeAutoRetrievalTimeout: onCodeAutoRetrievalTimeout,
//       );
//     } catch (e) {
//       print('Failed to send OTP: $e');
//       throw e; // Re-throw to allow external error handling
//     }
//   }
//
//   // Method to verify the OTP entered by the user
//   Future<bool> verifyOtp(String otp) async {
//     bool isValid = false;
//     try {
//       if (_verificationId == null) {
//         throw Exception('Verification ID is not available. Make sure OTP is sent.');
//       }
//
//       final credential = PhoneAuthProvider.credential(
//         verificationId: _verificationId!,
//         smsCode: otp,
//       );
//
//       final userCredential = await _auth.signInWithCredential(credential);
//       isValid = userCredential.user != null; // Check if user is authenticated
//
//       if (isValid) {
//         print('OTP verified successfully!');
//       } else {
//         print('OTP verification failed.');
//       }
//     } catch (e) {
//       print('Error verifying OTP: $e');
//     }
//     return isValid;
//   }
// }
import 'package:firebase_auth/firebase_auth.dart';

class MobileAuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  String? _verificationId; // Nullable verification ID for safety

  // Firebase is initialized in main.dart, so no need to reinitialize here
  Future<void> initialize() async {
    // Initialization if needed, typically handled in main.dart
  }

  // Method to send OTP to a given mobile number
  Future<void> sendOtp(
      String mobile,
      void Function(String verificationId, int? resendToken) onCodeSent,
      void Function(FirebaseAuthException e) onVerificationFailed,
      ) async {
    try {
      await _auth.verifyPhoneNumber(
        phoneNumber: mobile,
        verificationCompleted: (PhoneAuthCredential credential) async {
          // Auto-retrieval or instant verification completed
          await _auth.signInWithCredential(credential);
          print('Auto-verified successfully');
        },
        verificationFailed: onVerificationFailed,
        codeSent: onCodeSent,
        codeAutoRetrievalTimeout: (String verificationId) {
          // Auto-retrieval timed out
          _verificationId = verificationId;
          print('Code auto-retrieval timed out');
        },
      );
    } catch (e) {
      print('Failed to send OTP: $e');
      throw e; // Re-throw to allow external error handling
    }
  }

  // Method to verify the OTP entered by the user
  Future<bool> verifyOtp(String otp) async {
    bool isValid = false;
    try {
      if (_verificationId == null) {
        throw Exception('Verification ID is not available. Make sure OTP is sent.');
      }

      final credential = PhoneAuthProvider.credential(
        verificationId: _verificationId!,
        smsCode: otp,
      );

      final userCredential = await _auth.signInWithCredential(credential);
      isValid = userCredential.user != null; // Check if user is authenticated

      if (isValid) {
        print('OTP verified successfully!');
      } else {
        print('OTP verification failed.');
      }
    } catch (e) {
      print('Error verifying OTP: $e');
    }
    return isValid;
  }
}
