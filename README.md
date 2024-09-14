# OTP-Based Registration Flutter App

## Overview

The OTP-Based Registration Flutter App is a robust and secure mobile application designed for user authentication using one-time passwords (OTPs). This application supports both phone and email verification and integrates with Firebase for backend services. The app features a responsive design, appealing user interface, and enhanced error handling to provide a seamless and secure registration experience.

## Features

- **Phone Number Authentication**: Users can verify their phone numbers with a 4-digit OTP sent via SMS. The app supports multinational phone numbers with a default country code set to +91, which can be changed as needed.
- **Email Authentication**: Users can authenticate their email addresses with an OTP sent via email.
- **Database Integration**: Utilizes Firebase Firestore to store user data and manage authentication states securely.
- **Responsive Design**: Ensures the application is adaptive and performs well on both Android and iOS devices.
- **Enhanced UI Elements**: Includes eye-catching warning messages and appealing animations for OTP verification and error handling.
- **Real-Time Error Handling**: Robust error handling mechanisms guide users through common issues such as incorrect OTP entry or network problems.
- **Secure Authentication**: Employs Firebase Authentication for reliable and secure user verification.

## Getting Started

Follow these steps to set up and run the OTP-Based Registration Flutter App on your local machine:

### Prerequisites

Ensure you have the following installed:

- **Flutter SDK**: Version 3.0.0 or higher. Download it from [Flutter's official website](https://flutter.dev/docs/get-started/install).
- **Dart SDK**: Version 2.18.0 or higher, included with the Flutter SDK.
- **Code Editor**: Recommended editors include [VS Code](https://code.visualstudio.com/) or [Android Studio](https://developer.android.com/studio).
- **Device**: An emulator or a physical device for testing.

### Installation

1. **Clone the Repository**

   Open your terminal and run:

   ```bash
   git clone https://github.com/yourusername/otp-based-registration-flutter-app.git
   cd otp-based-registration-flutter-app
   ```

2. **Install Dependencies**

   Install the required dependencies by running:

   ```bash
   flutter pub get
   ```

3. **Set Up Firebase**

   - **Create a Firebase Project**: Go to the [Firebase Console](https://console.firebase.google.com/) and create a new project.
   - **Configure Firebase for Android and iOS**:
     - Follow the [Firebase setup instructions](https://firebase.google.com/docs/flutter/setup) for Android and iOS.
     - For Android, download `google-services.json` and place it in the `android/app/` directory.
     - For iOS, download `GoogleService-Info.plist` and place it in the `ios/Runner/` directory.
   - **Set Up Firestore Database**: Configure Firestore in the Firebase Console to manage user data and authentication states.

4. **Run the App**

   Launch the app on your emulator or physical device:

   ```bash
   flutter run
   ```

## Usage

- **Phone Authentication**: Enter your phone number and receive an OTP via SMS. Input the OTP to verify your phone number.
- **Email Authentication**: Provide your email address to receive an OTP via email. Input the OTP to verify your email address.

## Code Structure

Here’s a brief overview of the code structure:

- **lib/**: Contains the main application code.
  - `main.dart`: The entry point of the application.
  - **screens/**: Contains various screens of the app, including registration and verification screens.
  - **widgets/**: Houses reusable UI components and custom widgets.
  - **services/**: Contains authentication logic, Firestore integration, and other service-related code.

## Contributing

We welcome contributions to improve the app. To contribute:

1. **Fork the Repository**: Click 'Fork' on the top-right corner of this repository page.
2. **Create a New Branch**: Use `git checkout -b feature/your-feature` to create a new branch.
3. **Commit Your Changes**: Add and commit changes with `git commit -am 'Add new feature'`.
4. **Push to the Branch**: Push your changes with `git push origin feature/your-feature`.
5. **Create a Pull Request**: Open a pull request on GitHub to merge your changes.

## License

This project is licensed under the MIT License. For details, see the [LICENSE](LICENSE) file.

## Contact

For questions, feedback, or support, please contact:

- **Email**: [nazeefahmad555.com](mailto:nazeefahmad555.com)
- **GitHub**: [https://github.com/NazeefAhmad](https://github.com/NazeefAhmad)

---

Thank you for exploring the OTP-Based Registration Flutter App! We hope you find it useful and secure. If you have any questions or suggestions, feel free to reach out.
```
