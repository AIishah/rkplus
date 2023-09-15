import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBJUInNdrkPTcyzEq6p8LNlvAd4rxpLGAc",
            authDomain: "second-bb857.firebaseapp.com",
            projectId: "second-bb857",
            storageBucket: "second-bb857.appspot.com",
            messagingSenderId: "763962169416",
            appId: "1:763962169416:web:dc405f1254fcbcec15607d",
            measurementId: "G-JKW1H2385N"));
  } else {
    await Firebase.initializeApp();
  }
}
