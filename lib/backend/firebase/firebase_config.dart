import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyB2XoEchdk_qMyJoAChIHxI1JYK0dB1kCQ",
            authDomain: "shift-log-596ab.firebaseapp.com",
            projectId: "shift-log-596ab",
            storageBucket: "shift-log-596ab.appspot.com",
            messagingSenderId: "998698533897",
            appId: "1:998698533897:web:8cc9e8df711f2ef82e64d8",
            measurementId: "G-8YMQ865VCW"));
  } else {
    await Firebase.initializeApp();
  }
}
