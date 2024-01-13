import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyAqdC9qj0_B-jdvR1buLJ_UuX0Z_lZUbSw",
            authDomain: "savesway-9ff10.firebaseapp.com",
            projectId: "savesway-9ff10",
            storageBucket: "savesway-9ff10.appspot.com",
            messagingSenderId: "271887994255",
            appId: "1:271887994255:web:03baf36c1ac50575218ffa",
            measurementId: "G-2M575D7XQS"));
  } else {
    await Firebase.initializeApp();
  }
}
