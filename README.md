# 🎉 **OTP-Based Registration Flutter App** 🚀

Welcome to the **OTP-Based Registration Flutter App**! This cutting-edge mobile application simplifies user authentication using one-time passwords (OTPs). It supports both phone and email verification, seamlessly integrates with Firebase, and offers a responsive, user-friendly experience.

---

## 🌟 **Key Features**

- **📞 Phone Number Authentication**: Verify phone numbers with a 4-digit OTP sent via SMS. Supports multinational numbers with a default country code set to +91, which users can customize.
- **📧 Email Authentication**: Authenticate email addresses using an OTP sent directly to users' inboxes.
- **💾 Database Integration**: Uses Firebase Firestore to securely manage user data and authentication states.
- **📱 Responsive Design**: Delivers optimal performance on both Android and iOS devices.
- **✨ Enhanced UI**: Features engaging animations and clear warning messages for an improved user experience.
- **⚠️ Real-Time Error Handling**: Provides immediate feedback on issues like incorrect OTP entries or network problems.
- **🔒 Secure Authentication**: Relies on Firebase Authentication for robust user verification.

---

## 📥 **Getting Started**

To set up and run the OTP-Based Registration Flutter App locally, follow these steps:

### 🛠️ **Prerequisites**

- **Flutter SDK**: Version 3.0.0 or higher. [Download here](https://flutter.dev/docs/get-started/install).
- **Dart SDK**: Version 2.18.0 or higher (included with Flutter SDK).
- **Code Editor**: Recommended editors are [VS Code](https://code.visualstudio.com/) or [Android Studio](https://developer.android.com/studio).
- **Device**: Emulator or physical device for testing.

### 🔧 **Installation Steps**

1. **Clone the Repository**

   Open your terminal and run:

   ```bash
   git clone https://github.com/yourusername/otp-based-registration-flutter-app.git
   cd otp-based-registration-flutter-app
   ```

2. **Install Dependencies**

   Run the following command:

   ```bash
   flutter pub get
   ```

3. **Set Up Firebase**

   - **Create a Firebase Project**: Visit the [Firebase Console](https://console.firebase.google.com/) and create a new project.
   - **Configure Firebase for Android and iOS**:
     - Follow the [Firebase setup instructions](https://firebase.google.com/docs/flutter/setup).
     - For Android: Download `google-services.json` and place it in `android/app/`.
     - For iOS: Download `GoogleService-Info.plist` and place it in `ios/Runner/`.
   - **Set Up Firestore Database**: Configure Firestore in the Firebase Console for user data management.

4. **Run the App**

   Launch the app on your emulator or physical device:

   ```bash
   flutter run
   ```

---

## 📸 **Screenshots**

Here are some screenshots of the app:

![Screenshot_2024-09-20-04-02-32-449_com example random123](https://github.com/user-attachments/assets/ea4a256a-ebe2-41ff-890c-0cb3647dffa1)![Screenshot_2024-09-20-04-02-23-071_com example random123](https://github.com/user-attachments/assets/ef58da67-dfc8-43b7-a359-e7ea581edc6a) ![Screenshot_2024-09-20-04-02-10-552_com example random123](https://github.com/user-attachments/assets/93f9300c-631c-4436-a444-f91626b861a3) ![Screenshot_2024-09-20-04-02-16-582_com example random123](https://github.com/user-attachments/assets/0bc02b9a-82b3-41ec-ac09-65f09db83f97) ![Screenshot_2024-09-20-04-02-10-552_com example random123 (1)](https://github.com/user-attachments/assets/24bce232-76bd-44b3-a9c5-f96eff0270c6)

---

## 🎯 **Usage**

- **Phone Authentication**: Enter your phone number to receive an OTP via SMS. Enter the OTP to verify your phone number.
- **Email Authentication**: Provide your email address to receive an OTP via email. Enter the OTP to verify your email address.

---

## 🗂️ **Code Structure**

Here’s a brief overview of the code structure:

- **lib/**: Contains the main application code.
  - `main.dart`: Entry point of the application.
  - **screens/**: Various screens of the app, such as registration and verification.
  - **widgets/**: Reusable UI components and custom widgets.
  - **services/**: Authentication logic, Firestore integration, and service-related code.

---

## 🤝 **Contributing**

We welcome contributions! To contribute:

1. **Fork the Repository**: Click 'Fork' on the top-right of this repository page.
2. **Create a New Branch**: Use `git checkout -b feature/your-feature` to create a new branch.
3. **Commit Your Changes**: Add and commit changes with `git commit -am 'Add new feature'`.
4. **Push to the Branch**: Push your changes with `git push origin feature/your-feature`.
5. **Create a Pull Request**: Open a pull request on GitHub to merge your changes.

---

## 📜 **License**

This project is licensed under the [MIT License](LICENSE). See the LICENSE file for details.

---

## 📬 **Contact**

For questions or support, please contact:

- **Email**: [nazeefahmad555.com](mailto:nazeefahmad555.com)
- **GitHub**: [NazeefAhmad](https://github.com/NazeefAhmad)

---

## 🙏 **Acknowledgements**

Special thanks to **1Finance** for their support and resources in bringing this project to life!

---

Thank you for exploring the **OTP-Based Registration Flutter App**! If you have questions or suggestions, feel free to reach out.

---
