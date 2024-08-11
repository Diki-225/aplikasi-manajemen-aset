import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDteZrzBdHzpWEISEloApwHiCyH6U-xyFw",
            authDomain: "manajemen-aset-app-lbs7pe.firebaseapp.com",
            projectId: "manajemen-aset-app-lbs7pe",
            storageBucket: "manajemen-aset-app-lbs7pe.appspot.com",
            messagingSenderId: "209022687442",
            appId: "1:209022687442:web:67241c9ae7c8f38651f50b"));
  } else {
    await Firebase.initializeApp();
  }
}
