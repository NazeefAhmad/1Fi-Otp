# 🎉 **OTP-Based Registration Flutter App** 🚀

Welcome to the **OTP-Based Registration Flutter App**! This modern and secure mobile application is designed to streamline user authentication using one-time passwords (OTPs). With support for both phone and email verification, this app integrates seamlessly with Firebase for backend services and delivers a responsive, user-friendly experience.

---

## 🌟 **Key Features**

- **📞 Phone Number Authentication**: Verify phone numbers using a 4-digit OTP sent via SMS. Supports multinational numbers with a default country code set to +91, which users can change as needed.
- **📧 Email Authentication**: Authenticate email addresses with an OTP sent directly to users' inboxes.
- **💾 Database Integration**: Utilizes Firebase Firestore to securely store user data and manage authentication states.
- **📱 Responsive Design**: Ensures the app performs beautifully on both Android and iOS devices.
- **✨ Enhanced UI**: Features eye-catching warning messages and appealing animations for a delightful user experience.
- **⚠️ Real-Time Error Handling**: Provides clear guidance on common issues like incorrect OTP entries or network problems.
- **🔒 Secure Authentication**: Relies on Firebase Authentication for robust and secure user verification.

---

## 📥 **Getting Started**

To set up and run the OTP-Based Registration Flutter App locally, follow these steps:

### 🛠️ **Prerequisites**

Ensure you have the following installed:

- **Flutter SDK**: Version 3.0.0 or higher. [Download here](https://flutter.dev/docs/get-started/install).
- **Dart SDK**: Version 2.18.0 or higher, included with Flutter SDK.
- **Code Editor**: Recommended editors include [VS Code](https://code.visualstudio.com/) or [Android Studio](https://developer.android.com/studio).
- **Device**: An emulator or a physical device for testing.

### 🔧 **Installation Steps**

1. **Clone the Repository**

   Open your terminal and run:

   ```bash
   git clone https://github.com/yourusername/otp-based-registration-flutter-app.git
   cd otp-based-registration-flutter-app
   ```

2. **Install Dependencies**

   Run the following command to install required dependencies:

   ```bash
   flutter pub get
   ```

3. **Set Up Firebase**

   - **Create a Firebase Project**: Go to the [Firebase Console](https://console.firebase.google.com/) and create a new project.
   - **Configure Firebase for Android and iOS**:
     - Follow the [Firebase setup instructions](https://firebase.google.com/docs/flutter/setup) for both Android and iOS.
     - For Android, download `google-services.json` and place it in the `android/app/` directory.
     - For iOS, download `GoogleService-Info.plist` and place it in the `ios/Runner/` directory.
   - **Set Up Firestore Database**: Configure Firestore in the Firebase Console to manage user data and authentication states.

4. **Run the App**

   Launch the app on your emulator or physical device:

   ```bash
   flutter run
   ```

---

## 🎯 **Usage**

- **Phone Authentication**: Enter your phone number and receive an OTP via SMS. Input the OTP to verify your phone number.
- **Email Authentication**: Provide your email address to receive an OTP via email. Enter the OTP to verify your email address.

---

## 🗂️ **Code Structure**

Here’s a brief overview of the code structure:

- **lib/**: Contains the main application code.
  - `main.dart`: The entry point of the application.
  - **screens/**: Includes various screens of the app, such as registration and verification screens.
  - **widgets/**: Houses reusable UI components and custom widgets.
  - **services/**: Contains authentication logic, Firestore integration, and other service-related code.

---

## 🤝 **Contributing**

We welcome contributions to improve the app. To contribute:

1. **Fork the Repository**: Click 'Fork' on the top-right corner of this repository page.
2. **Create a New Branch**: Use `git checkout -b feature/your-feature` to create a new branch.
3. **Commit Your Changes**: Add and commit changes with `git commit -am 'Add new feature'`.
4. **Push to the Branch**: Push your changes with `git push origin feature/your-feature`.
5. **Create a Pull Request**: Open a pull request on GitHub to merge your changes.

---

## 📜 **License**

This project is licensed under the [MIT License](LICENSE). For details, see the LICENSE file.

---

## 📬 **Contact**

For questions, feedback, or support, please contact:

- **Email**: [nazeefahmad555.com](mailto:nazeefahmad555.com)
- **GitHub**: [NazeefAhmad](https://github.com/NazeefAhmad)

---

## 🙏 **Acknowledgements**

A special thank you to **1Finance** for the opportunity to work on this project. Your support and resources have been invaluable in bringing this app to life!

---

Thank you for exploring the **OTP-Based Registration Flutter App**! We hope you find it secure, user-friendly, and useful. If you have any questions or suggestions, feel free to reach out.
