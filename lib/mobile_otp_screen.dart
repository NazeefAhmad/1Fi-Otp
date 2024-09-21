
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:random123/mobile_auth_service.dart';
import 'package:random123/task_processing_screen.dart';
import 'package:random123/main_screen.dart';
import 'otp_screen.dart';
import 'main.dart';
import 'otp_verified_screen.dart';


class MobileOTPScreen extends StatefulWidget {
  final String phoneNumber;

  MobileOTPScreen({required this.phoneNumber});

  @override
  _MobileOTPScreenState createState() => _MobileOTPScreenState();
}

class _MobileOTPScreenState extends State<MobileOTPScreen> {
  final List<TextEditingController> _otpControllers =
      List.generate(6, (index) => TextEditingController());
  final MobileAuthService _mobileAuthService = MobileAuthService();
  String _verificationId = '';

  @override

  void initState() {
    super.initState();
    _mobileAuthService.initialize();
    _sendOtp(); // Automatically send OTP when screen initializes
  }

  void _sendOtp() async {
    try {
      String formattedPhoneNumber = _formatPhoneNumber(widget.phoneNumber);
      await _mobileAuthService.sendOtp(
        formattedPhoneNumber,
        (verificationId, resendToken) {
          setState(() {
            _verificationId = verificationId;
          });
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('OTP sent successfully')),
          );
        },
        (error) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Failed to send OTP: ${error.message}')),
          );
        },
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Failed to send OTP: $e')),
      );
    }
  }

  void _verifyOtp() async {
    final otp = _otpControllers.map((controller) => controller.text).join();
    if (otp.length == 6) {
      final otpValid = await _mobileAuthService.verifyOtp(otp);
      if (otpValid) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => OTPVerifiedScreen()),
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Invalid OTP, please try again.')),
        );
      }
    }
  }

  String _formatPhoneNumber(String phoneNumber) {
    if (!phoneNumber.startsWith('+')) {
      // Default to +91 if no country code is provided
      phoneNumber = '+91' + phoneNumber;
    }
    return phoneNumber;
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final boxSize = screenWidth / 10; // Adjust ratio for responsive box size

    return Scaffold(
      backgroundColor: Colors.black,
      // appBar: AppBar(
      //   backgroundColor: ,
      //   title: Text('Verify Your Mobile Number'),
      // ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            //crossAxisAlignment: CrossAxisAlignment ,
            children: [
              Container(
                height: screenWidth * 0.3,
              ),
              SizedBox(
                height: screenWidth * 0.3,
                child: Image.asset(
                  'assets/images/logo.png',
                ),
              ),
              // Title and Subtitle
              Text(
                'Verify Your Mobile Number',
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                  fontFamily: 'league',
                  letterSpacing: .2
                    ),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: screenWidth * 0.02),
              Text(

                'Enter the OTP sent to your mobile phone to confirm your account.',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      color: Colors.white70,
                  fontFamily: 'league',
                    ),

                textAlign: TextAlign.center,
              ),
              SizedBox(height: screenWidth * 0.3),
              AbsorbPointer(
                absorbing: true,
                child: Row(
                  children: [
                    Expanded(
                      child: InternationalPhoneNumberInput(
                        onInputChanged: (PhoneNumber number) {},
                        initialValue: PhoneNumber(isoCode: 'IN'),
                        selectorConfig: SelectorConfig(
                          selectorType: PhoneInputSelectorType.DROPDOWN,
                          showFlags: true,
                        ),
                        ignoreBlank: false,
                        autoValidateMode: AutovalidateMode.onUserInteraction,
                        selectorTextStyle: TextStyle(
                          color: Color.fromRGBO(236, 223, 204, 1.0),
                        ),
                        textFieldController:
                            TextEditingController(text: widget.phoneNumber),
                        formatInput: true,
                        inputDecoration: InputDecoration(
                          fillColor: Color.fromRGBO(235, 211, 248, 1.0),
                          filled: true,
                          labelStyle: TextStyle(
                            fontSize: 24,
                            color: Color.fromRGBO(255, 255, 0, 1.0),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(
                                25.0), // Set the radius to make the border rounded
                            borderSide: BorderSide
                                .none, // Removes the default border line
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(
                                15.0), // Set the radius for the focused border
                            borderSide: BorderSide(
                              color: Color.fromRGBO(210, 224, 251, 1.0),
                              width: 1.6,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(
                                15.0), // Set the radius for the enabled border
                            borderSide: BorderSide(
                              color: Color.fromRGBO(235, 211, 248, 1.0),
                              width: 1.6,
                            ),
                          ),
                          disabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(
                                15.0), // Set the radius for the disabled border
                            borderSide: BorderSide(
                              color: Color.fromRGBO(200, 200, 200, 1.0),
                              width: 1.6,
                            ),
                          ),
                        ),
                      ),
                    ),
                    // IconButton(
                    //   icon: Icon(Icons.edit, color: Colors.blue),
                    //   onPressed: () {
                    //     Navigator.pushNamed(context, '/mainScreen');
                    //   },
                    // ),
                  ],
                ),
              ),
              SizedBox(height: screenWidth * 0.05),
              _buildOtpInput(context, boxSize),
              SizedBox(height: screenWidth * 0.25),
              Container(
                width: double
                    .infinity, // Makes the button stretch across the full width of the screen
                margin: EdgeInsets.symmetric(
                    horizontal:
                        16), // Optional: Add horizontal margins if needed
                child: ElevatedButton(
                  onPressed: _verifyOtp,
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Color.fromRGBO(228, 224, 240, 1.0),
                    backgroundColor: Color.fromRGBO(
                        67, 17, 103, 1.0), // Color of the text (white)
                    elevation: 4, // Subtle shadow elevation
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(12), // Rounded corners
                    ),
                    padding: EdgeInsets.symmetric(
                        vertical: 12), // Vertical padding inside the button
                  ).copyWith(
                    side: MaterialStateProperty.all(
                      BorderSide(
                        color:
                            Colors.purple, // Border color (minimal color use)
                        width: 2, // Border width
                      ),
                    ),
                  ),
                  child: Text(
                    'Verify OTP',
                    style: TextStyle(
                      fontFamily: 'league',
                      fontSize: 20, // Font size
                      fontWeight: FontWeight.w600, // Font weight
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildOtpInput(BuildContext context, double boxSize) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(6, (index) {
        return Container(
          margin: EdgeInsets.symmetric(horizontal: boxSize * 0.14),
          width: boxSize,
          height: boxSize,
          decoration: BoxDecoration(
            color: Color.fromRGBO(235, 211, 248, 1.0),
            borderRadius: BorderRadius.circular(boxSize / 3.5),
          ),
          child: TextField(
            controller: _otpControllers[index],
            maxLength: 1,
            keyboardType: TextInputType.number,
            textAlign: TextAlign.center,
            decoration: InputDecoration(
              counterText: '',
              border: InputBorder.none,
            ),
            onChanged: (value) {
              if (value.length == 1 && index < 5) {
                FocusScope.of(context).nextFocus();
              } else if (value.isEmpty && index > 0) {
                FocusScope.of(context).previousFocus();
              }
            },
          ),
        );
      }),
    );
  }
}

//task reminder check navigation and cross check
