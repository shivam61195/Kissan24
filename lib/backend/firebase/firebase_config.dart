import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyD9DtceiPIiUoOFg5O0GKIAuewFAIanvwI",
            authDomain: "kisaan24-renxl7.firebaseapp.com",
            projectId: "kisaan24-renxl7",
            storageBucket: "kisaan24-renxl7.appspot.com",
            messagingSenderId: "681539890264",
            appId: "1:681539890264:web:db163b408834779ae72e2d"));
  } else {
    await Firebase.initializeApp();
  }
}
