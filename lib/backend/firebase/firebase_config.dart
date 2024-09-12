import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyDMP_97FpUeiYFxtMr5jkSkIyGi-EYTo1g",
            authDomain: "my-portfolieo-5rl93b.firebaseapp.com",
            projectId: "my-portfolieo-5rl93b",
            storageBucket: "my-portfolieo-5rl93b.appspot.com",
            messagingSenderId: "876086156042",
            appId: "1:876086156042:web:a2492fa76799f18154f8f3"));
  } else {
    await Firebase.initializeApp();
  }
}
