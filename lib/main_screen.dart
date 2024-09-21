import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:random123/mobile_otp_screen.dart'; // Ensure this import path matches your project structure

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Color.fromRGBO(8, 8, 8, 1.0),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: h * 0.18,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(height: 8),
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Welcome to ',
                            style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.w600,
                              color: Color.fromRGBO(255, 255, 255, 1.0),
                              fontFamily: 'league',
                            ),
                          ),
                          TextSpan(
                            text: '1Finance',
                            style: TextStyle(
                              fontFamily: 'league',
                              fontSize: 40,
                              fontWeight: FontWeight.w700,
                              color: Color.fromRGBO(214, 189, 152, 1.0),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Discover your financial personality',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Fira',
                        fontSize: 16,
                        color: Color.fromRGBO(255, 253, 253, 1.0),
                      ),
                    ),
                  ],
                ),
              ),
              Image.asset(
                'assets/images/logo.png',
                height: h * 0.35,
                width: w * 0.6,
              ),
              SizedBox(height: 25),
              _buildPhoneNumberInput(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPhoneNumberInput(BuildContext context) {
    return Column(
      children: [
        TextField(
          keyboardType: TextInputType.name,
          controller: _nameController,
          style: TextStyle(
            color: Color.fromRGBO(128, 70, 184, 1.0),
            fontSize: 20,
          ),
          decoration: InputDecoration(
            labelText: 'Enter your Name',
            labelStyle: TextStyle(
              fontSize: 18,
              fontFamily: 'league',
              fontWeight: FontWeight.bold,
              color: Color.fromRGBO(128, 70, 184, 1.0), // Default color
            ),
            floatingLabelStyle: TextStyle(
              color: Colors.transparent, // Color when floating upwards
              fontSize: 1,
              fontWeight: FontWeight.bold,
            ),
            fillColor: Color.fromRGBO(222, 210, 241, 1.0),
            filled: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: BorderSide(
                color: Color.fromRGBO(228, 224, 240, 1.0),
                width: 1.0,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: BorderSide(
                color:
                    Color.fromRGBO(210, 224, 251, 1.0), // Border color on focus
                width: 2.0,
              ),
            ),
          ),
        ),

        SizedBox(height: 45),
        // TextField(
        //   keyboardType: TextInputType.phone,
        //   controller: _phoneController,
        //   style: TextStyle(
        //     color: Color.fromRGBO(253, 240, 199, 1.0),
        //     fontSize: 20,
        //   ),
        //   decoration: InputDecoration(
        //     labelText: 'Enter your Phone Number',
        //     labelStyle: TextStyle(
        //       fontSize: 22,
        //       fontWeight: FontWeight.bold,
        //       color: Color.fromRGBO(1, 0, 0, 1.0),
        //     ),
        //     fillColor: Color.fromRGBO(222, 210, 241, 1.0),
        //     filled: true,
        //     border: OutlineInputBorder(
        //       borderRadius: BorderRadius.circular(8.0),
        //       borderSide: BorderSide(
        //         color: Colors.grey,
        //         width: 1.0,
        //       ),
        //     ),
        //     focusedBorder: OutlineInputBorder(
        //       borderRadius: BorderRadius.circular(8.0),
        //       borderSide: BorderSide(
        //         color: Color.fromRGBO(210, 224, 251, 1.0),
        //         width: 2.0,
        //       ),
        //     ),
        //   ),
        // ),
//         Align(
//           alignment: Alignment.centerLeft,
//           child: Container(
//             width: MediaQuery.of(context).size.width * 0.9,
//
//               decoration: BoxDecoration(
//               color: Color.fromRGBO(222, 210, 241, 1.0),
//              borderRadius: BorderRadius.circular(8), // Rounded corners with 12px radius
//
//     ),
//             child: InternationalPhoneNumberInput(
//               onInputChanged: (PhoneNumber number) {},
//               initialValue: PhoneNumber(isoCode: 'IN'),
//               selectorConfig: SelectorConfig(
//                 selectorType: PhoneInputSelectorType.DROPDOWN,
//                 showFlags: true,
//               ),
//               ignoreBlank: false,
//               autoValidateMode: AutovalidateMode.onUserInteraction,
//
//               selectorTextStyle:
//                   TextStyle(color: Color.fromRGBO(114, 11, 188, 1.0)),
//
//
//               textFieldController: _phoneController,
//               formatInput: false,
//               keyboardType: TextInputType.phone,
//               inputDecoration: InputDecoration(
//
//                 labelText: 'Enter Phone Number', focusColor: Colors.red,
//
//                 // hintText: 'Enter Your Phone Number',
//                 labelStyle: TextStyle(
//                   fontSize: 18,
//                   fontWeight: FontWeight.bold,
//                   color: Color.fromRGBO(114, 11, 188, 1.0),
//                 ),
//                 floatingLabelStyle: TextStyle(
//                   color: Colors.transparent, // Color when floating upwards
//                   fontSize: 1,
//                   fontWeight: FontWeight.bold,
//                 ),
//                 fillColor: Color.fromRGBO(222, 210, 241, 1.0),
//                 // filled: true,
//                 // border: OutlineInputBorder(
//                 //   borderRadius: BorderRadius.circular(8.0),
//                 //   borderSide: BorderSide(
//                 //     color: Color.fromRGBO(114, 11, 188, 1.0),
//                 //     width: 1.0,
//                 //   ),
//                 // ),
//                 // focusedBorder: OutlineInputBorder(
//                 //   borderRadius: BorderRadius.circular(8.0),
//                 //   borderSide: BorderSide(
//                 //     color: Color.fromRGBO(210, 224, 251, 1.0),
//                 //     width: 2.0,
//                 //   ),
//                 // ),
//               ),
//
//               // Change the text color when typing
//               textStyle: TextStyle(
//                 color: Color.fromRGBO(15, 0, 21, 1.0), // Set your desired text color here
//                 fontSize: 16, // Optional: Set font size if needed
//               ),
//             ),
//           ),
//         ),
//
//         SizedBox(height: 45),
//         Container(
//           width: double.infinity,
//           decoration: BoxDecoration(
//             gradient: LinearGradient(
//               colors: [
//                 Color.fromRGBO(44, 30, 82, 1.0),
//                 Color.fromRGBO(67, 17, 103, 1.0),
//               ],
//               begin: Alignment.topLeft,
//               end: Alignment.bottomRight,
//             ),
//             borderRadius: BorderRadius.circular(12),
//           ),
//           // child: ElevatedButton(
//           //   onPressed: () {
//           //     final phoneNumber = _phoneController.text;
//           //     if (phoneNumber.isNotEmpty) {
//           //       Navigator.push(
//           //         context,
//           //         MaterialPageRoute(
//           //           builder: (context) => MobileOTPScreen(phoneNumber: phoneNumber),
//           //         ),
//           //       );
//           //     } else {
//           //       ScaffoldMessenger.of(context).showSnackBar(
//           //         SnackBar(
//           //           content: Text(
//           //             'Please enter a phone number',
//           //             style: TextStyle(
//           //               color: Colors.red,
//           //             ),
//           //           ),
//           //         ),
//           //       );
//           //     }
//           //   },
//           child: ElevatedButton(
//             onPressed: () {
//               final phoneNumber = _phoneController.text;
//
//               // Check if the phone number is not empty and exactly 10 digits long
//               if (phoneNumber.isNotEmpty && phoneNumber.length == 10) {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) =>
//                         MobileOTPScreen(phoneNumber: phoneNumber),
//                   ),
//                 );
//               } else if (phoneNumber.length < 10) {
//                 ScaffoldMessenger.of(context).showSnackBar(
//                   SnackBar(
//                     //backgroundColor: Color.fromRGBO(235, 211, 248, 1.0),
//                     content: Text(
//                       'Please enter a valid 10-digit phone number',
//                       style: TextStyle(color: Colors.red),
//                     ),
//                   ),
//                 );
//               } else {
//                 ScaffoldMessenger.of(context).showSnackBar(
//                   SnackBar(
//                     content: Text(
//                       'Please enter a phone number',
//                       style: TextStyle(color: Colors.red),
//                     ),
//                   ),
//                 );
//               }
//             },
//             child: Text(
//               'Send OTP',
//               style: TextStyle(
//                 color: Color.fromRGBO(253, 240, 199, 1.0),
//                 fontSize: 16, // Increase font size
//                 fontWeight: FontWeight.w400,
//                 letterSpacing: 1,
//                 // Make text bold
//               ),
//             ),
//             style: ElevatedButton.styleFrom(
//               padding: EdgeInsets.symmetric(vertical: 15),
//               backgroundColor: Colors.transparent,
//               shadowColor: Colors.transparent,
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(12),
//               ),
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }
        Align(
          alignment: Alignment.centerLeft,
          child: Container(
            width: MediaQuery.of(context).size.width * 0.9, // 90% width
            decoration: BoxDecoration(
              color: Color.fromRGBO(222, 210, 241, 1.0),
              borderRadius: BorderRadius.circular(8), // Rounded corners
            ),
            child: InternationalPhoneNumberInput(
              onInputChanged: (PhoneNumber number) {},
              initialValue: PhoneNumber(isoCode: 'IN'),

              selectorConfig: SelectorConfig(
                selectorType: PhoneInputSelectorType.DROPDOWN,
                showFlags: true,
              ),
             // countrySelectorScrollControlled: ,
              ignoreBlank: false,
              autoValidateMode: AutovalidateMode.onUserInteraction,

              selectorTextStyle:
                  TextStyle(color: Color.fromRGBO(114, 11, 188, 1.0)),
              textFieldController: _phoneController,
              formatInput: false,
              keyboardType: TextInputType.phone,
              inputDecoration: InputDecoration(
                labelText: 'Enter Phone Number',
                focusColor: Colors.red,
                labelStyle: TextStyle(
                  fontFamily: 'league',
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(114, 11, 188, 1.0),
                ),
                floatingLabelStyle: TextStyle(
                  color: Colors.transparent, // Transparent when floating
                  fontSize: 1,
                  fontWeight: FontWeight.bold,
                ),
                fillColor: Color.fromRGBO(222, 210, 241, 1.0),
              ),
              textStyle: TextStyle(
                color: Color.fromRGBO(114, 11, 188, 1.0), // Text color
                fontSize: 18,
              ),
            ),
          ),
        ),

        SizedBox(
            height:45),
        // Add vertical space between the phone input and the button

        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromRGBO(44, 30, 82, 1.0),
                Color.fromRGBO(67, 17, 103, 1.0),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius:
                BorderRadius.circular(12), // Rounded corners for button
          ),
          child: ElevatedButton(
            onPressed: () {
              final phoneNumber = _phoneController.text;

              if (phoneNumber.isNotEmpty && phoneNumber.length == 10) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        MobileOTPScreen(phoneNumber: phoneNumber),
                  ),
                );
              } else if (phoneNumber.length < 10) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                      'Please enter a valid 10-digit phone number',
                      style: TextStyle(color: Colors.red),
                    ),
                  ),
                );
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                      'Please enter a phone number',
                      style: TextStyle(color: Colors.red),
                    ),
                  ),
                );
              }
            },
            child: Text(
              'Send OTP',
              style: TextStyle(
                fontFamily: 'league',
                color: Color.fromRGBO(253, 240, 199, 1.0), // Button text color
                fontSize: 20, // Text size
                fontWeight: FontWeight.w400, // Normal weight
                letterSpacing: 1, // Letter spacing
              ),
            ),
            style: ElevatedButton.styleFrom(
              padding:
                  EdgeInsets.symmetric(vertical: 15), // Button height padding
              backgroundColor: Colors.transparent, // Transparent background
              shadowColor: Colors.transparent, // No shadow
              shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.circular(12), // Rounded button corners
              ),
            ),
          ),
        ),
      ],
    );
  }
}
