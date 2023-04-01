import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyD-0LDo5nFPJ6wblbE_GjkBqyV7X_7YzVk",
            authDomain: "pictmobi.firebaseapp.com",
            projectId: "pictmobi",
            storageBucket: "pictmobi.appspot.com",
            messagingSenderId: "219955384471",
            appId: "1:219955384471:web:51a3d053b3da0cb3c3d9d2"));
  } else {
    await Firebase.initializeApp();
  }
}
