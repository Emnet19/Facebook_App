# Facebook Clone (Flutter + Firebase)

A Flutter-based Facebook-style mobile application that uses Firebase Authentication to manage user login sessions. The app features a splash screen, authentication flow, and automatic login detection.

#  Features

🔵 Facebook-style Splash Screen

🔐 Firebase Authentication

🔁 Automatic login check

👤 Redirects logged-in users to Home Page

🔑 Redirects new users to Login Page

📱 Clean UI using Flutter Material Design

🔥 Firebase integration (Android & iOS ready)

🧱 Project Structure

lib/

│
├── main.dart                # App entry point

├── splash_screen.dart       # Splash screen with login check

├── login.dart               # Login page

├── home.dart                # Home page

├── firebase_options.dart    # Firebase configuration


# 🛠️ Technologies Used

Flutter (Dart)

Firebase Core

Firebase Authentication

Material UI

# 🔐 Authentication Logic

On app start, the splash screen appears for a short time.

Firebase checks if a user is already logged in:

✅ If logged in → Redirect to Home Page

❌ If not logged in → Redirect to Login Page

Users remain logged in until they manually sign out.

📸 App Flow
Splash Screen
     ↓
Check Firebase Login Status
     ↓
 ┌───────────────┐
 │ User Logged In│ ──→ Home Page
 └───────────────┘
        │
        ↓
 ┌────────────────┐
 │ Not Logged In  │ ──→ Login Page
 └────────────────┘

# ⚙️ Setup Instructions
1️⃣ Clone the Repository
git clone https://github.com/your-username/facebook-clone-flutter.git
cd facebook-clone-flutter

2️⃣ Install Dependencies
flutter pub get

3️⃣ Configure Firebase

Create a Firebase project

Add Android & iOS apps

Download:

google-services.json (Android)

GoogleService-Info.plist (iOS)

Generate firebase_options.dart using:

flutterfire configure

4️⃣ Run the App
flutter run

# 📦 Dependencies
firebase_core: ^latest
firebase_auth: ^latest
flutter:
  sdk: flutter

# 🚪 Logout Feature

To log out a user:

await FirebaseAuth.instance.signOut();


This will redirect the user to the login page on the next app start.
